import 'package:flutter/material.dart';
import 'package:yessenov_app/features/autorization_info/view/autorization_page.dart';
import 'package:yessenov_app/features/enter_phone_page/view/enter_phone_screen.dart';
import 'package:yessenov_app/features/first_page/view/first_screen.dart';
import 'package:yessenov_app/features/home_page/view/home_screen.dart';
import 'package:yessenov_app/features/login_page/view/login_screen.dart';
import 'package:yessenov_app/features/sms_page/view/sms_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstScrren());
  }
}
