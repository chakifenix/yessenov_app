import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yessenov_app/features/home_page/view/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 107,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('images/logo.svg'),
                    ],
                  ),
                  SizedBox(
                    height: 77,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 27),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            child: Text(
                          'Пошта адресі',
                          style:
                              TextStyle(fontFamily: 'Montserrat', fontSize: 14),
                        )),
                        SizedBox(
                          height: 4,
                        ),
                        CupertinoTextField(
                          keyboardType: TextInputType.emailAddress,
                          prefix: Row(
                            children: [
                              SizedBox(
                                width: 3,
                              ),
                              SvgPicture.asset('images/mobile.svg'),
                            ],
                          ),
                          placeholder: 'yu@example.kz',
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Color(0xFFADADAD)),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Container(
                            child: Text(
                          'Құпия сөз',
                          style:
                              TextStyle(fontFamily: 'Montserrat', fontSize: 14),
                        )),
                        SizedBox(
                          height: 4,
                        ),
                        CupertinoTextField(
                          obscureText: true,
                          prefix: Row(
                            children: [
                              SizedBox(
                                width: 3,
                              ),
                              SvgPicture.asset('images/mobile.svg'),
                            ],
                          ),
                          placeholder: '*************',
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Color(0xFFADADAD)),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Құпия сөзді еске түсіру',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: Color(0xFF717171)),
                            ),
                            Text(
                              'Менде аккаунт жоқ',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: Color(0xFF246BFD)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 29,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('images/google.png'),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Google аккаунтпен кіру'),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                                elevation: 0.4,
                                backgroundColor: Colors.white,
                                shape: BeveledRectangleBorder()),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('images/facebook.png'),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Facebook аккаунтпен кіру'),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                                elevation: 0.4,
                                backgroundColor: Colors.white,
                                shape: BeveledRectangleBorder()),
                          ),
                        ),
                        SizedBox(
                          height: 29,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CupertinoButton(
                              color: Color(0xFF246BFD),
                              child: Text('Жалғастыру'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeScreen()));
                              }),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
