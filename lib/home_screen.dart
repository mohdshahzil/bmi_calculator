import 'package:bmi_calculator/ui/gender_box.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fill in your details!',
            style: TextStyle(fontWeight: FontWeight.w500)),
      ),
      body: Container(
          margin: const EdgeInsets.all(15.0),
          child: const Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: GenderBox(gender: "Male"),
                  ),
                  Expanded(
                    child: GenderBox(
                      gender: "Female",
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
