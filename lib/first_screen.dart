import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  TextEditingController textEditingController = TextEditingController();
  String text = 'Demo';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          TextField(
            controller: textEditingController,
          ),
          TextButton(onPressed: () {
            setState(() {
              text = textEditingController.text;
            });
          }, child: Text('click me'))
        ],
      ),
    );
  }
}
