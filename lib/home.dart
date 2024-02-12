import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  var list=[{
    "city": "New York",
    "temperature": 20,
    "condition": "Clear",
    "humidity": 60,
    "windSpeed": 5.5
  },
  {
  "city": "Los Angeles",
  "temperature": 25,
  "condition": "Sunny",
  "humidity": 50,
  "windSpeed": 6.8
  },
  {
  "city": "London",
  "temperature": 15,
  "condition": "Partly Cloudy",
  "humidity": 70,
  "windSpeed": 4.2
  },
  {
  "city": "Tokyo",
  "temperature": 28,
  "condition": "Rainy",
  "humidity": 75,
  "windSpeed": 8.0
  },
  {
  "city": "Sydney",
  "temperature": 22,
  "condition": "Cloudy",
  "humidity": 55,
  "windSpeed": 7.3
  },];
      
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('weather info App',style: TextStyle(color: Colors.white),),backgroundColor:Colors.cyan,),
      body: ListView.builder(itemCount: 5,itemBuilder:(context,index){
        return SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${list[index]['city']}'),
                    Text('${list[index]['temperature']}'),
                    Text('${list[index]['condition']}'),
                    Text('${list[index]['humidity']}'),
                    Text('${list[index]['windSpeed']}'),
                  ],
                ),
               
              ),
            ],
          ),
        );
      }),
    );
  }
}
