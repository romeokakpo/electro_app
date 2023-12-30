import 'package:electro_app/components/switch.dart';
import 'package:flutter/material.dart';

class ControlScreen extends StatelessWidget {
  const ControlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
            child: Row(
          children: [
            Expanded(child: CustomSwitch(idx: 1)),
            Expanded(child: CustomSwitch(idx: 2)),
          ],
        )),
        Expanded(
            child: Row(
          children: [
            Expanded(child: CustomSwitch(idx: 3)),
            Expanded(child: CustomSwitch(idx: 4)),
          ],
        ))
      ],
    );
  }
}
