import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:world_time_app/classes/getData_class.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  @override
  void initState() {
    super.initState();
    getDataLoadingPage();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SpinKitFadingCircle(
          color: Color.fromARGB(146, 12, 16, 49),
          size: 160.0,
        ),
      ),
    );
  }

  getDataLoadingPage() async {
    //  info about time

    AllCountries oneCountry =
    AllCountries(countryName: "Egypt", flag: "egypt", link: "Africa/Cairo");

    await oneCountry.getData();

    Navigator.pushReplacementNamed(context, '/home', arguments: {
      "time": oneCountry.timeNow,
      "location": oneCountry.timeZone,
      "isDayTime": oneCountry.isDayTime
    });
  }

}