import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView(
          children: [
            Image.asset('assets/images/logo.jpeg'),
            const Text(
              "Project by:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const Text(
              "GNELE Mauriac",
              textAlign: TextAlign.center,
            ),
            const Text(
              "DJAOUGA Raïnath",
              textAlign: TextAlign.center,
            ),
            const Text(
              "KIKI Vignon",
              textAlign: TextAlign.center,
            ),
            const Text(
              "NAGBE Jean-Lucasse",
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Under the supervision of:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const Text(
              "M. Probus KIKI",
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "App by:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const Text(
              "KAKPO Y. Roméo",
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              "2023",
              textAlign: TextAlign.center,
            )
          ],
        ))
      ],
    );
  }
}
