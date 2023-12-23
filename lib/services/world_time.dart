import 'package:http/http.dart' ;
import 'dart:convert';
// import 'package:intl/intl.dart';


class WorldTime {
  String location;
  String? time;
  String flag;
  String url;
  bool? isDaytime; // true or false if daytime or not

  // bool isDaytime; // true or false if daytime or not

  WorldTime({ required this.location, required this.flag, required this.url });
  
  Future<void> getTime() async {
    
    try{
      Response response =  await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      DateTime now = DateTime.parse(data['datetime'].substring(0,23));
      // time = DateFormat.jm().format(now);
      time = now.toString();
      // print(time);
      isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
    }

    catch (e) {
      // print(e);
      time = 'could not get time';
      
    }

  }

}
