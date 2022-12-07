import 'dart:ui';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:final_project/data/latest_workout.dart';
import 'package:final_project/pages/Notification/noti_data.dart';
import 'package:final_project/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/svg.dart';

Future<Noti> fetchData() async {
  final response = await http
      .get('https://6374d14208104a9c5f8a22b5.mockapi.io/Notifications');
  if (response.statusCode == 200) {
    return Noti.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load API');
  }
}

class Notification extends StatefulWidget {
  const Notification({Key? key}) : super(key: key);

  @override
  _NotificationState createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      color: black.withOpacity(0.03),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Icon(
                      Ionicons.ios_arrow_back,
                      size: 22,
                      color: black.withOpacity(0.3),
                    ),
                  ),
                )),
            Text(
              "Notification",
              style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.bold, color: black),
            ),
            IconButton(
                onPressed: () {},
                icon: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      color: black.withOpacity(0.03),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Icon(
                      Entypo.dots_two_horizontal,
                      size: 22,
                      color: black.withOpacity(0.3),
                    ),
                  ),
                ))
          ],
        ),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView();
  }
}
