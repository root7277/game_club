import 'package:flutter/material.dart';
import 'package:game_club/widgets/room.dart';

class OneScreen extends StatefulWidget {
  const OneScreen({super.key});

  @override
  State<OneScreen> createState() => _OneScreenState();
}

class _OneScreenState extends State<OneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 45, 7, 161),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index){
            return const GameRoomNumber(
              roomName: 'I-Room',
            );
          },
        ),
      ),
    );
  }
}