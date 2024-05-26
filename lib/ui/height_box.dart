import 'package:flutter/material.dart';

class HeightBox extends StatefulWidget {
  const HeightBox({super.key});

  @override
  _HeightBoxState createState() => _HeightBoxState();
}

class _HeightBoxState extends State<HeightBox> {
  double _currentHeight = 170.0;

  void _handleHeightChanged(double newHeight) {
    setState(() {
      _currentHeight = newHeight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: 250,
      decoration: BoxDecoration(
        color: Colors.grey[350],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: const Text(
                    "Height",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const Spacer(), // This will push the "cm" circle to the far right
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.black, // Circle color
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                      width: 0.5,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "cm",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Text(
            _currentHeight.toStringAsFixed(1),
            style: const TextStyle(
              fontSize: 52,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          Slider(
            value: _currentHeight,
            thumbColor: Colors.black,
            activeColor: Colors.black,
            min: 100.0,
            max: 220.0,
            onChanged: _handleHeightChanged,
          ),
        ],
      ),
    );
  }
}
