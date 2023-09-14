import 'package:flutter/material.dart';

class TwoScreen extends StatefulWidget {
  const TwoScreen({super.key});

  @override
  State<TwoScreen> createState() => _TwoScreenState();
}

class _TwoScreenState extends State<TwoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 8, 163, 225),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){}, 
                style: const ButtonStyle(
                  minimumSize: MaterialStatePropertyAll(Size(220, 70)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))),
                  backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 86, 6, 133))
                ),
                child: const Text(
                  'Start',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 16, 194, 191)),
                )
              ),
              const SizedBox(width: 30),
              ElevatedButton(
                onPressed: (){}, 
                style: const ButtonStyle(
                  minimumSize: MaterialStatePropertyAll(Size(220, 70)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))),
                  backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 86, 6, 133))
                ),
                child: const Text(
                  'Stop',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 16, 194, 191)),
                )
              ),
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