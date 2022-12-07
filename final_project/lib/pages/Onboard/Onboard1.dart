import 'package:final_project/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:final_project/pages/signup_page.dart';

class Onboard1 extends StatefulWidget {
  const Onboard1({Key? key}) : super(key: key);

  @override
  _Onboard1State createState() => _Onboard1State();
}

class _Onboard1State extends State<Onboard1> {
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
          padding: const EdgeInsets.all(3),
          child: Column(
            children: [
              Container(
                height: (size.height - 60) * 0.7,
                child: Image.asset(
                  "assets/images/onboard/onboard1.png",
                ),
              ),
              Container(
                  height: (size.height - 60) * 0.3,
                  child: Column(children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Track Your Goal",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: primary, onPrimary: secondary),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpPage()));
                        },
                        child: Text(
                          ">",
                          style: TextStyle(fontSize: 30),
                        ))
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
