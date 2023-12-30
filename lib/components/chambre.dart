import 'package:flutter/material.dart';

class Chambre extends StatelessWidget {
  const Chambre({super.key, required this.idx, required this.value});
  final int idx;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: Colors.blue.shade200),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Chambre $idx",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          Text(
            "$value",
            style: TextStyle(
                fontSize: 40, color: value >= 15 ? Colors.red : Colors.white),
          )
        ],
      ),
    );
  }
}
