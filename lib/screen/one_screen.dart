import 'package:flutter/material.dart';
import 'package:game_club/widgets/room.dart';

class OneScreen extends StatefulWidget {
  const OneScreen({super.key});

  @override
  State<OneScreen> createState() => _OneScreenState();
}

class _OneScreenState extends State<OneScreen> {
  List roomName = ['I', 'II', 'III', 'IV', 'V'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 32, 71, 13),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return GameRoomNumber(
              roomName: roomName[index] + '-Room',
            );
          },
        ),
      ),
    );
  }
}
