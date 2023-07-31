import 'package:flutter/material.dart';
import 'package:weather_conditions/Activites/home.dart';
import 'package:weather_conditions/Activites/loading.dart';
import 'package:weather_conditions/Activites/location.dart';
void main() {
  runApp(MaterialApp(
    routes: {
      "/" : (context) => Loading(),
      "/home" : (context) => Home(),
    },
  ));

}

