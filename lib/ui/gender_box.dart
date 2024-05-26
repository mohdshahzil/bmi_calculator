import 'package:flutter/material.dart';

class GenderBox extends StatelessWidget {
  const GenderBox({super.key, required this.gender});

  final String gender;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: 200,
      decoration: BoxDecoration(
        color: Colors.grey[350],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          gender,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
