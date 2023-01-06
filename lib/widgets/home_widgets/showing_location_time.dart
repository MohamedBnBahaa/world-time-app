import 'package:flutter/material.dart';

class ShowingLocationTime extends StatelessWidget {
  const ShowingLocationTime({
    Key? key,
    required this.time,
    required this.location,
  }) : super(key: key);

  final String time;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 34),
      color: const Color.fromARGB(111, 0, 0, 0),
      child: Column(
        children: [
          Text(
            time,
            style: const TextStyle(fontSize: 56, color: Colors.white),
          ),
          const SizedBox(
            height: 22,
          ),
          Text(
            location,
            style: const TextStyle(fontSize: 28, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
