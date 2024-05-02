import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yessenov_app/features/login_page/view/login_screen.dart';
import 'package:yessenov_app/features/sms_page/view/sms_screen.dart';

class EnterPhoneScreen extends StatelessWidget {
  const EnterPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                height: 120,
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                          child: const Text(
                    'Телефон номер енгІзің',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                    textAlign: TextAlign.center,
                  ))),
                ],
              ),
              SizedBox(
                height: 42,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CupertinoTextField(
                  keyboardType: TextInputType.phone,
                  prefix: Row(
                    children: [
                      SizedBox(
                        width: 3,
                      ),
                      SvgPicture.asset('images/mobile.svg'),
                    ],
                  ),
                  placeholder: '+7 701 70 70 255',
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xFFADADAD)),
                      borderRadius: BorderRadius.circular(4)),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text(
                  'Менде аккаунт бар',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 10,
                      color: Color(0xFF246BFD)),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: CupertinoButton(
                          color: Color(0xFF246BFD),
                          child: Text(
                            'Жалғастыру',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SmsScreen()));
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 48,
              )
            ],
          )
        ],
      ),
    );
  }
}
