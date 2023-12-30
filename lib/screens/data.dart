import 'package:electro_app/components/chambre.dart';
import 'package:flutter/material.dart';

class DataScreen extends StatelessWidget {
  const DataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/logo.jpeg',
          scale: 2,
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          "The consumption by KWh",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const Expanded(
            child: Row(
          children: [
            Expanded(child: Chambre(idx: 1, value: 1.1)),
            Expanded(child: Chambre(idx: 2, value: 15.38)),
          ],
        )),
        const Expanded(
            child: Row(
          children: [
            Expanded(child: Chambre(idx: 3, value: 1.37)),
            Expanded(child: Chambre(idx: 4, value: 1.3)),
          ],
        ))
      ],
    );
  }
}
