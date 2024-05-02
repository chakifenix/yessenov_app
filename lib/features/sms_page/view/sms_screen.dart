import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:yessenov_app/features/home_page/view/home_screen.dart';

class SmsScreen extends StatelessWidget {
  SmsScreen({super.key});

  final defaultPinTheme = PinTheme(
      width: 63,
      height: 40,
      textStyle: TextStyle(fontSize: 22, color: Colors.black),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color(0xFFD8DADC))));

  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 108,
                ),
                Text(
                  textAlign: TextAlign.center,
                  '+708 777 77 77 нөміріне жіберілген кодты енгізіңіз',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat'),
                ),
                SizedBox(
                  height: 27,
                ),
                Text(
                  'Растау коды',
                  style: TextStyle(
                      fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 7,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Pinput(
                    controller: otpController,
                    length: 5,
                    defaultPinTheme: defaultPinTheme,
                    keyboardType: TextInputType.number,
                    closeKeyboardWhenCompleted: false,
                  ),
                ),
                SizedBox(
                  height: 21,
                ),
                Text(
                  'Ұялы телефон нөмірін өңдеу',
                  style: TextStyle(
                      fontFamily: 'Montserrat', color: Color(0xFF246BFD)),
                ),
              ],
            ),
            Column(
              children: [
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
                ),
                SizedBox(
                  height: 51,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
