import 'package:flutter/material.dart';
import 'quizzler_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Animal Quizz !!',
      home: FirstScreen(),
    ),
  );
}

class FirstScreen extends StatefulWidget {
  FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  //เริ่มต้นกำหนดค่าสำหรับ textField
  final myController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }
  //โดยถ้าต้องการอ้างถึงค่าข้อมูลใน textField นี้ สามารถอ้างถึงด้วย myController.text
  //จบการกำหนดค่าต่างๆสำหรับ textField

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  'Insert your name',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.0,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: TextField(
                  textAlign: TextAlign.center,
                  controller: myController,
                ),
              ),
            ),
          ),
          //เริ่มต้นตัวอย่างการใช้งาน
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Quizzler(name: myController.text)));
            },
            child: Expanded(
              child: Container(
                child: Text(
                  'NEXT',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.blueGrey,
                height: 50.0,
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}