import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, "/home");
              },
              child: Row(
                children: [
                  Icon(Icons.add_to_home_screen,),

                  SizedBox(width: 30,),// Add some space between the icon and the text
                  Text("Go to Home" ,
                  style: TextStyle(color: Colors.black),),
                ],
              ),
              // Optionally, you can set the tooltip for the entire FloatingActionButton
              // tooltip: "Go to Home",
            ),
          ],
        ),
      ),
    );
  }
}
