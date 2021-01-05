import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(url:'Asia/Kolkata', location:"Kolkata", flag:'Ind.png'),
    WorldTime(url:'Europe/London', location:"London", flag:"Eng.png"),
    WorldTime(url:'Australia/Adelaide' , location:'Adelaide' , flag:'Aus.png'),
    WorldTime(url:'Australia/Brisbane' , location:'Brisbane' , flag:'Aus.png'),
    WorldTime(url:'Australia/Melbourne' , location:'Melbourne' , flag:'Aus.png' ),
    WorldTime(url:'Australia/Perth' , location:'Perth' , flag:'Aus.png'),
    WorldTime(url:'Australia/Sydney' , location:'Sydney' , flag:'Aus.png' ),
    WorldTime(url:'Asia/Dubai' , location:'Dubai' , flag:'UAE.png'),
    WorldTime(url:'Africa/Johannesburg' , location:'Johannesburg' , flag:'SA.png'),
    WorldTime(url:'America/New_York' , location:'New York' , flag:'Ame.png'),
    WorldTime(url:'Pacific/Auckland' , location:'Auckland' , flag:'NZ.png'),
    WorldTime(url:'Europe/Paris' , location:'Paris' , flag:'Fra.png'),
    WorldTime(url:'Europe/Berlin' , location:'Berlin' , flag:'Ger.png'),
    WorldTime(url:'Asia/Tokyo' , location:'Tokyo' , flag:'Jap.png'),
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();

    // navigate to home screen
    Navigator.pop(context, {
      'location':instance.location,
      'flag':instance.flag,
      'time':instance.time,
      'isDaytime':instance.isDaytime,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Choose a Location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: (){
                  print(locations[index].location);
                  updateTime(index);
                },
                title: Text(
                  locations[index].location
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
