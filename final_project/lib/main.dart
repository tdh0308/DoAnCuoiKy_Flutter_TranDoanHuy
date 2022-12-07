import 'package:final_project/pages/Onboard/Welcome.dart';
import 'package:flutter/material.dart';
import 'router.dart' as router;

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Welcome(),
    onGenerateRoute: router.generateRoute,
  ));
}
