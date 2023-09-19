import 'package:flutter/material.dart';

class RemoteControl extends StatefulWidget {
  const RemoteControl({super.key});

  @override
  State<RemoteControl> createState() => _RemoteControlState();
}

class _RemoteControlState extends State<RemoteControl> {
  bool? isChecked1 = false;
  bool? isChecked2 = false;
  bool? isChecked3 = false;
  bool? isChecked4 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 45),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Checkbox(
                  value: isChecked1,
                  activeColor: const Color.fromARGB(255, 5, 17, 71),
                  onChanged: (newValue1) {
                    setState(() {
                      isChecked1 = newValue1;
                    });
                  }),
              const Text(
                '1 remote control',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 29, 138, 2)),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 45),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Checkbox(
                  value: isChecked2,
                  activeColor: const Color.fromARGB(255, 5, 17, 71),
                  onChanged: (newValue2) {
                    setState(() {
                      isChecked2 = newValue2;
                    });
                  }),
              const Text(
                '2 remotes control',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 29, 138, 2)),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 45),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Checkbox(
                  value: isChecked3,
                  activeColor: const Color.fromARGB(255, 5, 17, 71),
                  onChanged: (newValue3) {
                    setState(() {
                      isChecked3 = newValue3;
                    });
                  }),
              const Text(
                '3 remotes control',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 29, 138, 2)),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 45),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Checkbox(
                  value: isChecked4,
                  activeColor: const Color.fromARGB(255, 5, 17, 71),
                  onChanged: (newValue4) {
                    setState(() {
                      isChecked4 = newValue4;
                    });
                  }),
              const Text(
                '4 remotes control',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 29, 138, 2)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
