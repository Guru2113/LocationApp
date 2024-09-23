import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SafeArea(
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 200,
                    ),
                    const Text("           Welcome             to  Indian  Railways",
                        style: TextStyle(fontSize: 45)),
                    const SizedBox(height: 200),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const First()));
                        },
                        child: const Text("Next"))
                  ],
                ),
              ),
            )));
  }

}


class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Indian Railways"), centerTitle: true),
      body: ListView(
        children: [
          const Text("Introduction:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          const SizedBox(
            height: 10,
          ),
          const Text(
              "                   Indian Railways (IR) is the state-owned railway company of India. Indian Railways had, until very recently, a monopoly on the country's rail transport. It is one of the largest and busiest rail networks in the world, transporting just over six  billion passengers and almost 750 million tonnes of freight annually. IR is the world's largest commercial or utility employer, with more than 1.6 million employees.The railways traverse through the length and width of the country; the routes cover a total length of 63,940  km (39,230  miles). As of 2005 IR owns a total of 216,717 wagons, 39,936 coaches and 7,339 locomotives and runs a total of 14,244 trains daily, including about 8,002 passenger trains .Railways were first introduced to India in 1853. By 1947, the year of India's independence, there were forty-two rail systems. In 1951 the systems were nationalised as one unit, becoming one of the largest networks in the world. Indian Railways operates both long distance and suburban rail systems.",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25)),
          const SizedBox(height: 10),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Second()));
              },
              child: const Text("Next"))
        ],
      ),
    );
  }
}

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Indian Railways"), centerTitle: true),
        body:ListView(children: [
          OutlinedButton(onPressed: (){
            Fluttertoast.showToast(
                msg: "Indian Railways is the largest railways network to be operated by a single government and is the world’s third largest network with a total length of 127,760 kms.",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 5,
                backgroundColor: Colors.blue,
                textColor: Colors.white,
                fontSize: 16.0
            );
          }, child: Image.asset("assets/1.png")),
          const SizedBox(height: 20,),
          OutlinedButton(onPressed: (){
            Fluttertoast.showToast(
                msg: "Indian Railways has five luxury trains.",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 2,
                backgroundColor: Colors.blue,
                textColor: Colors.white,
                fontSize: 16.0
            );
          }, child: Image.asset("assets/2.png")),
          const SizedBox(height: 20,),
          OutlinedButton(onPressed: (){
            Fluttertoast.showToast(
                msg: "Indian Railways owned the longest railway platform in the world at Kharagpur with a length of 2,733 feet. Now, breaking the record, Gorakhpur station has recently taken its place with a span of 4,430 feet.",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 2,
                backgroundColor: Colors.blue,
                textColor: Colors.white,
                fontSize: 16.0
            );
          }, child: Image.asset("assets/3.png")),
          const SizedBox(height: 20,),
          OutlinedButton(onPressed: (){
            Fluttertoast.showToast(
                msg: "The Indian Railways is constructing the world’s highest rail bridge over Chenab.",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 2,
                backgroundColor: Colors.blue,
                textColor: Colors.white,
                fontSize: 16.0
            );
          }, child: Image.asset("assets/4.png")),
          const SizedBox(height: 20,),
          OutlinedButton(onPressed: (){
            Fluttertoast.showToast(
                msg: "The longest tunnel in the country is Pir Panjal Railway tunnel in Jammu and Kashmir which is 11.25 kms long.",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 2,
                backgroundColor: Colors.blue,
                textColor: Colors.white,
                fontSize: 16.0
            );
          }, child: Image.asset("assets/5.png")),
          const SizedBox(height: 20,),
          OutlinedButton(onPressed: (){
            Fluttertoast.showToast(
                msg: "The busiest junction in the country is Howrah junction in Kolkata with as many as 974 trains stopping there daily.",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 2,
                backgroundColor: Colors.blue,
                textColor: Colors.white,
                fontSize: 16.0
            );
          }, child: Image.asset("assets/6.png")),
          const SizedBox(height: 20,),
          OutlinedButton(onPressed: (){
            Fluttertoast.showToast(
                msg: "The oldest working Indian locomotive still in use is the Fairy Queen, which worked with a steam engine.",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 2,
                backgroundColor: Colors.blue,
                textColor: Colors.white,
                fontSize: 16.0
            );
          }, child: Image.asset("assets/7.png")),
          const SizedBox(height: 20,),
          OutlinedButton(onPressed: (){
            Fluttertoast.showToast(
                msg: "The Indian Railways is the world’s eighth largest employer with a total of 1.4 million employees.",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 2,
                backgroundColor: Colors.blue,
                textColor: Colors.white,
                fontSize: 16.0
            );
          }, child: Image.asset("assets/8.png")),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Third(),));
          }, child: const Text("Next"))
        ],
        ));
  }
}

class Third extends StatelessWidget {
  const Third({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("Indian Railways"),centerTitle: true),
      body: ListView(children: [const Text("History of Indian railways:",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        const Text("                Indian Railways is the fourth-largest network in the world, spanning over 1.2 Lakh Km across the country. Mainly, three kinds of services are provided by the Indian Railway to the public including Express trains, Mail Express, and Passenger Trains. If we talk about the fare, then Passenger trains fare are the lowest and Mail Express trains are the highest. On the other hand, Express trains fare lie in the middle.In 1832, the idea of setting up a railway system in British India was first proposed. At that time, rail travel was still in its infancy in Britain, but the East India Company knew the benefits of developing an extensive rail network. After a long decade of inaction, private entrepreneurs were allowed to establish a rail system by Lord Hardinge, the Governor-General of India in 1844. Two companies were formed by the year 1845 namely East Indian railway Company and the Great Indian Peninsula Railway.On 16 April 1853, the first train in India was to run between Bori Bunder, Bombay (now Mumbai), and Thane at a distance of around 34 km. The network to about 14,500 Km was developed in 1880 around the three major port cities of Bombay, Madras, and Calcutta. In 1901, Railway Board was formed under the guidance of the Department of Commerce and Industry. But still, the powers were vested in the Viceroy. Take a look at the chronology of Railways in India.",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
        ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const MyApp(),));
        }, child: const Text("First Page"))]),);
  }
}

