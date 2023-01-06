import 'package:flutter/material.dart';
import 'package:world_time_app/widgets/location_widgets/choosing_location.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 191, 191, 199),
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(146, 12, 16, 49),
        title: const Text(
          "Choose Location",
          style: TextStyle(fontSize: 22),
        ),
      ),
      body:const ChoosingLocation(),
    );
  }
}