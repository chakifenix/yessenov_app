import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yessenov_app/features/enter_phone_page/view/enter_phone_screen.dart';

class FirstScrren extends StatelessWidget {
  const FirstScrren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                height: 101.28,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 63, right: 63),
                        child: Image.asset(
                          'images/yessenov.png',
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 42.76,
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 57),
                    child: Image.asset(
                      'images/student.png',
                      fit: BoxFit.fill,
                    ),
                  ))
                ],
              ),
              SizedBox(
                height: 23.24,
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 57),
                          child: Text(
                              'Lorem ipsum dolor sit amet consectetur. Volutpat mi ultrices magna quam volutpat commodo.')))
                ],
              ),
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
                                      builder: (contex) => EnterPhoneScreen()));
                            })),
                  ],
                ),
              ),
              SizedBox(
                height: 48,
              )
            ],
          ),
        ],
      ),
    );
  }
}
