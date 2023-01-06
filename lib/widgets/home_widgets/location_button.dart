import 'package:flutter/material.dart';

class LocationButton extends StatelessWidget {
  const LocationButton({Key? key, required this.fetchDataOfLocationTime})
      : super(key: key);

  final Function fetchDataOfLocationTime;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        fetchDataOfLocationTime();
      },
      icon: const Icon(
        Icons.edit_location,
        color: Color.fromARGB(255, 255, 129, 129),
        size: 24.0,
      ),
      label: const Text(
        "Edit location",
        style: TextStyle(fontSize: 20),
      ),
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(const Color.fromARGB(146, 90, 103, 223)),
        padding: MaterialStateProperty.all(const EdgeInsets.all(22)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
