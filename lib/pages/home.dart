import 'package:flutter/material.dart';
import 'package:world_time_app/widgets/home_widgets/location_button.dart';
import 'package:world_time_app/widgets/home_widgets/showing_location_time.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {
    //                                    DATA from loading page
    data = data.isEmpty? ModalRoute.of(context)!.settings.arguments as Map : data ;
    // {     "time": timeNow ,     "location": timeZone,    "isDayTime": false  }
    String backgroundImage = data["isDayTime"] ? "day.png" : "night.png";

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 55, 53, 63),
          image: DecorationImage(
              image: AssetImage("assets/$backgroundImage"),
              fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LocationButton(
                fetchDataOfLocationTime: fetchDataOfLocationTime,
              ),
              const SizedBox(
                height: 300,
              ),
              ShowingLocationTime(
                time: data["time"],
                location: data["location"],
              ),
            ],
          ),
        ),
      ),
    );
  }


  fetchDataOfLocationTime() async {
    dynamic result = await Navigator.pushNamed(context, '/location');
    setState(() {
      if (result == null) {
        data = {
          "time": "...",
          "location": "Please Choose a location ✋",
          "isDayTime": false
        };
      } else {
        data = {
          "time": result["time"],
          "location": result["location"],
          "isDayTime": result["isDayTime"]
        };
      }

    });
  }
}