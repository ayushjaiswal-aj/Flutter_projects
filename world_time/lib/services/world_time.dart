import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {

  String location;        // location name for ui
  String time;            // time in  that location
  String flag;            // url to an asset flag icon
  String url;             // this is the location url for api endpoint
  bool isDaytime;         // to know is it day or night time

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async{
      try {
        // Make the request
        Response response = await get ('http://worldtimeapi.org/api/timezone/$url');
        Map data = jsonDecode(response.body);

        // Get properties from data
        String datetime = data['datetime'];
        String offset = data['utc_offset'];
        String offsetHour = offset.substring(1, 3);
        String offsetMin = offset.substring(4);

        // create a date time object
        DateTime now = DateTime.parse(datetime);
        now = now.add(Duration(hours: int.parse(offsetHour), minutes: int.parse(offsetMin)));

        isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
        // set time property
        time = DateFormat.jm().format(now);

      }
      catch (e){
        print(e);
        time = "Refresh";
        isDaytime = true;
      }
  }
}