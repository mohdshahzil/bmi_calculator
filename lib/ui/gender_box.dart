import 'package:flutter/material.dart';

class GenderBox extends StatelessWidget {
  const GenderBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: 200,
      decoration: BoxDecoration(
        color: Colors.grey[350],
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Center(
        child: Text(
          'Female',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
