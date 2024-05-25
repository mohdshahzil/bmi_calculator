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
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.all(5),
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey[350],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Text('Male'),
                        )),
                  ),
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.all(5),
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey[350],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Text('Female'),
                        )),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
