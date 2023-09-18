import 'dart:async';

import 'package:flutter/material.dart';

class TwoScreen extends StatefulWidget {
  const TwoScreen({super.key});

  @override
  State<TwoScreen> createState() => _TwoScreenState();
}

class _TwoScreenState extends State<TwoScreen> {
  int seconds = 0, minutes = 0, hours = 0;
  String digitSecond = '00', digitMinut = '00', digitHours = '00';
  Timer? timer;
  bool started = false;

  void stop() {
    timer!.cancel();
    setState(() {
      started = false;
    });
  }

  void start() {
    started = true;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      int localSeconds = seconds + 1;
      int localMinutes = minutes;
      int localHours = hours;

      if (localSeconds > 59) {
        if (localMinutes > 59) {
          localHours++;
          localMinutes = 0;
        } else {
          localMinutes++;
          localSeconds = 0;
        }
      }

      setState(() {
        seconds = localSeconds;
        minutes = localMinutes;
        hours = localHours;
        digitSecond = (seconds >= 10) ? "$seconds" : "0$seconds";
        digitMinut = (minutes >= 10) ? "$minutes" : "0$minutes";
        digitHours = (hours >= 10) ? "$hours" : "0$hours";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 8, 163, 225),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              '$digitHours:$digitMinut:$digitSecond',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 82.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    start();
                  },
                  style: const ButtonStyle(minimumSize: MaterialStatePropertyAll(Size(220, 70)), shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))), backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 86, 6, 133))),
                  child: const Text(
                    'Start',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 16, 194, 191)),
                  )),
              const SizedBox(width: 30),
              ElevatedButton(
                  onPressed: () {
                    stop();
                  },
                  style: const ButtonStyle(minimumSize: MaterialStatePropertyAll(Size(220, 70)), shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))), backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 86, 6, 133))),
                  child: const Text(
                    'Stop',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 16, 194, 191)),
                  )),
            ],
          ),
          const SizedBox(height: 50),
          const Text(
            'Sum:',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 72, 4, 89)),
          ),
        ],
      ),
    );
  }
}
