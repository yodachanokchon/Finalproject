import 'package:flutter/material.dart';
import 'main.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.score});
  final String score;

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
                  'Wow! Your score is',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  score,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 50.0,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FirstScreen()));
            },
            child: Expanded(
              child: Container(
                child: const Text(
                  'HOME',
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
