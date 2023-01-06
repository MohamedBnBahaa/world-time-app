import 'package:flutter/material.dart';
import 'package:world_time_app/classes/getData_class.dart';

class ChoosingLocation extends StatelessWidget {
  const ChoosingLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: allCountries.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                onTap: () async {
                  AllCountries clickedCountry = allCountries[index];

                  await clickedCountry.getData();
                  Navigator.pop(context, {
                    "time": clickedCountry.timeNow,
                    "location": clickedCountry.timeZone,
                    "isDayTime": clickedCountry.isDayTime
                  });
                },
                title: Text(
                  allCountries[index].countryName,
                  style: const TextStyle(fontSize: 22),
                ),
                leading: CircleAvatar(
                  backgroundImage:
                  AssetImage("assets/${allCountries[index].flag}"),
                ),
              ),
            );
          }),
    );
  }
}
