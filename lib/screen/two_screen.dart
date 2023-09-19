import 'dart:async';

import 'package:flutter/material.dart';

class TwoScreen extends StatefulWidget {
  const TwoScreen({super.key});

  @override
  State<TwoScreen> createState() => _TwoScreenState();
}

class _TwoScreenState extends State<TwoScreen> {
  int seconds = 0, minutes = 0, hours = 0;
  String digitSeconds = '00', digitMinutes = '00', digitHours = '00';
  Timer? timer;
  bool started = false;
  List laps = [];

  void stop() {
    timer!.cancel();
    setState(() {
      started = false;
    });
  }

  void reset() {
    timer!.cancel();
    setState(() {
      seconds = 0;
      minutes = 0;
      hours = 0;

      digitHours = '00';
      digitMinutes = '00';
      digitSeconds = '00';

      started = false;
    });
  }

  void addLaps() {
    String lap = "$digitHours:$digitMinutes:$digitSeconds";
    setState(() {
      laps.add(lap);
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
        digitSeconds = (seconds >= 10) ? "$seconds" : "0$seconds";
        digitMinutes = (minutes >= 10) ? "$minutes" : "0$minutes";
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
              '$digitHours:$digitMinutes:$digitSeconds',
              style: const TextStyle(
                color: Color.fromARGB(255, 3, 80, 15),
                fontSize: 82.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 7, 8, 63),
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListView.builder(
                  itemCount: laps.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Lavel n^ ${index + 1}',
                            style: const TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          Text(
                            '${laps[index]}',
                            style: const TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    );
                  }),
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
                  style: const ButtonStyle(minimumSize: MaterialStatePropertyAll(Size(150, 70)), shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))), backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 86, 6, 133))),
                  child: const Text(
                    'Start',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 16, 194, 191)),
                  )),
              const SizedBox(width: 30),
              ElevatedButton(
                  onPressed: () {
                    stop();
                    addLaps();
                    reset();
                  },
                  style: const ButtonStyle(minimumSize: MaterialStatePropertyAll(Size(150, 70)), shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))), backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 86, 6, 133))),
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
