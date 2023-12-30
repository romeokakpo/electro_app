import 'package:electro_app/state/appstate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({super.key, required this.idx});

  final int idx;

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<AppState>(context);

    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: state.switchState[widget.idx - 1]
            ? Colors.blueAccent.shade200
            : Colors.grey,
      ),
      child: InkWell(
        onTap: () {
          state.changeSwitchState(widget.idx);
        },
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Switch(
            activeColor: Colors.amber,
            value: state.switchState[widget.idx - 1],
            onChanged: (value) {
              state.changeSwitchState(widget.idx);
            },
          ),
          Text(
            "Switch ${widget.idx}",
            style: const TextStyle(fontSize: 18, color: Colors.white),
          )
        ]),
      ),
    );
  }
}
