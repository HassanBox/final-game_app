import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 98, 3, 107),
        appBar: AppBar(
          title: const Text('تطابق صورة'),
          backgroundColor: const Color.fromARGB(255, 142, 98, 15),
        ),
        body: const MyGame(),
      ),
    ),
  );  
}

class MyGame extends StatefulWidget {
  const MyGame({super.key});

  @override
  State<MyGame> createState() => _MyGameState();
}

class _MyGameState extends State<MyGame> {
  int leftimage = 1;
  int rightimage = 2;

  void changeimage() {
    leftimage = Random().nextInt(8) + 1;
    rightimage = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftimage == rightimage
              ? 'والله انت عبيط عشان كملت اللعبة دى'
              : 'حاول مرة اخرى',
          style: const TextStyle(
            fontSize: 45.0,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      changeimage();
                    });
                  },
                  child: Image.asset('images/image-$leftimage.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      changeimage();
                    });
                  },
                  child: Image.asset('images/image-$rightimage.png'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
