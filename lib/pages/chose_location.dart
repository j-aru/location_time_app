import 'package:flutter/material.dart';
import 'package:flutterapp1/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'Australia/Sydney', location: 'Sydney', flag: 'usa.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'Australia/Melbourne', location: 'Melbourne', flag: 'south_korea.png'),
    WorldTime(url: 'America/Port_of_Spain', location: 'Port_of_Spain', flag: 'indonesia.png'),
    WorldTime(url: 'Asia/Kolkata', location: 'Kolkata', flag: 'india.png'),
    WorldTime(url: 'Asia/Singapore', location: 'Singapore', flag: 'india.png'),
    WorldTime(url: 'America/Santiago', location: 'Santiago', flag: 'india.png'),
    WorldTime(url: 'America/Toronto', location: 'Toronto', flag: 'india.png'),


  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    Navigator.pop(context, {
      'location': instance.location,
      'time': instance.time,
      'flag': instance.flag,
      'isDaytime': instance.isDaytime,
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    updateTime(index);
                  },
                  title: Text(locations[index].location),

                ),
              ),
            );
          }
      ),
    );
  }
}