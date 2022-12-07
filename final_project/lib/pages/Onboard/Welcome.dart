import 'dart:ui';

import 'package:final_project/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:final_project/pages/Onboard/Onboard1.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Container(
                height: (size.height - 60) * 0.85,
                child: Column(
                  children: [
                    SizedBox(
                      height: 250,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Fitnest",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 40),
                        ),
                        Text(
                          "X",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                              color: thirdColor),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Everybody Can Train",
                        style: TextStyle(fontSize: 18, color: Colors.grey))
                  ],
                ),
              ),

              // login button and social login
              Container(
                  height: (size.height - 60) * 0.15,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Onboard1()));
                        },
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              gradient:
                                  LinearGradient(colors: [secondary, primary]),
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Get Started",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
