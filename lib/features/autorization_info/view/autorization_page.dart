import 'package:flutter/material.dart';

class AutorizationInfo extends StatelessWidget {
  const AutorizationInfo(
      {super.key,
      required this.topic,
      required this.title,
      required this.content,
      required this.image});
  final String topic;
  final String title;
  final String content;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(topic),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                content,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                ),
              ),
              Image.asset(image)
            ],
          ),
        ),
      ),
    );
  }
}
