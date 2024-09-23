import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(LocationAlertApp());
}

class LocationAlertApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LocationAlertHomePage(),
    );
  }
}

class LocationAlertHomePage extends StatefulWidget {
  @override
  _LocationAlertHomePageState createState() => _LocationAlertHomePageState();
}

class _LocationAlertHomePageState extends State<LocationAlertHomePage> {
  TextEditingController _locationController = TextEditingController();
  double? targetLatitude;
  double? targetLongitude;
  bool isAlertSet = false;

  @override
  void initState() {
    super.initState();
    _determinePosition();
  }

  Future<void> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error('Location permissions are permanently denied, we cannot request permissions.');
    }
  }

  void _startTracking() {
    Geolocator.getPositionStream().listen((Position position) {
      if (targetLatitude != null && targetLongitude != null) {
        double distance = Geolocator.distanceBetween(
          position.latitude,
          position.longitude,
          targetLatitude!,
          targetLongitude!,
        );
        if (distance < 100 && !isAlertSet) {
          setState(() {
            isAlertSet = true;
          });
          _showAlert();
        }
      }
    });
  }

  void _showAlert() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert'),
          content: Text('You have reached the target location!'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                setState(() {
                  isAlertSet = false;
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Alert App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _locationController,
              decoration: InputDecoration(
                labelText: 'Enter target location (lat,long)',
              ),
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                List<String> location = _locationController.text.split(',');
                if (location.length == 2) {
                  setState(() {
                    targetLatitude = double.tryParse(location[0]);
                    targetLongitude = double.tryParse(location[1]);
                    isAlertSet = false;
                  });
                  _startTracking();
                }
              },
              child: Text('Set Target Location'),
            ),
          ],
        ),
      ),
    );
  }
}
