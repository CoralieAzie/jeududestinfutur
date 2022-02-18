import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Jeu du destin futur'),
          backgroundColor: Colors.blue,
        ),
        body: ballpage(),
      ),
    ),
  );
}

class ballpage extends StatelessWidget {
  int ballNumber = Random().nextInt(5) + 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () {
                  print("Vous avez cliquer sur la boule magique");
                },
                child: Image.asset("images/ball$ballNumber.png")),
          )),
        ],
      ),
    );
  }
}

class ballpage2 extends StatefulWidget {
  const ballpage2({Key? key}) : super(key: key);

  @override
  _ballpage2State createState() => _ballpage2State();
}

class _ballpage2State extends State<ballpage2> {
  int ballNumber = Random().nextInt(5) + 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () {
                  setState(() {
                    ballNumber = Random().nextInt(5) + 1;
                  });
                  print("Vous avez cliquer sur la boule magique");
                },
                child: Image.asset("images/ball1.png")),
          )),
        ],
      ),
    );
  }
}
