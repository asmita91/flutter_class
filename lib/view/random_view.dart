import 'dart:math';

import 'package:flutter/material.dart';

class RandomScreen extends StatefulWidget {
  const RandomScreen({super.key});

  @override
  State<RandomScreen> createState() => _RandomScreenState();
}

class _RandomScreenState extends State<RandomScreen> {
  var counter = 0;
  var first;
  var second;

  @override
  void initState() {
    first = Random().nextInt(100);
    second = Random().nextInt(100);

    super.initState();
    String val = "";
    checkValue(val);
  }

  void checkValue(String val) {
    if (counter < 10) {
      setState(() {
        first = Random().nextInt(100);
        second = Random().nextInt(100);
        if (first == second) {
          second = Random().nextInt(100);
        } else if (first > second && val == "first") {
          counter++;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Random")),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          checkValue("first");
                        },
                        child: Text("$first")),
                    ElevatedButton(
                        onPressed: () {
                          checkValue("second");
                        },
                        child: Text("$second")),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Result",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text("Your score is : $counter /10"),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter = 0;
                      });
                    },
                    child: const Text("Restart"))
              ],
            ),
          ),
        ));
  }
}
