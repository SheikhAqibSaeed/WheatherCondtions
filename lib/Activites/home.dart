import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

// Async : Funtion Start but Return Some Delayed.
  // Future.delayed: Function Start after some Delayed.

   late String? username1;

  Future<void> getData() async {
    // Simulate an asynchronous operation that takes 3 seconds to complete.
    await Future.delayed(Duration(seconds: 3), () {
      username1 = 'AqibSaeed';
    });
  }

  void showData() async {
    // Wait for the getData() method to complete before printing the value.
    await getData();
    print("$username1");
  }

   //THis method is used to timer start after sometime.
   // void timer(){
   //   Future.delayed(Duration(seconds: 4), () {
   //     print("Hello World...");
   //   });
   //   print("You can other activity now..");
   // }

  int counter = 1;

  @override
  void initState() {
    super.initState();
    // timer();
    showData();
    print("This is Init State.");
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    print("Set State called");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("Wiget Disposed");
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(
      title: Text("Home Activity"),
    ),
      body: Column(
        children: <Widget>[
          FloatingActionButton(onPressed: () => setState(() {
            counter += 1;
          }),
          ),
          Text("$counter"),
        ],
        ),
    );
  }
}
