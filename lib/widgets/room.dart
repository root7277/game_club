import 'package:flutter/material.dart';
import 'package:game_club/widgets/remote_controle.dart';

class GameRoomNumber extends StatefulWidget {
  final String roomName;
  const GameRoomNumber({super.key, required this.roomName});

  @override
  State<GameRoomNumber> createState() => _GameRoomNumberState();
}

class _GameRoomNumberState extends State<GameRoomNumber> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 320,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color.fromARGB(255, 75, 52, 3),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              widget.roomName,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 28, 93, 153)),
            ),
          ),
          const RemoteControl(),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'two_screen');
                },
                style: const ButtonStyle(minimumSize: MaterialStatePropertyAll(Size(200, 50)), shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))), backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 86, 6, 133))),
                child: const Text(
                  'Next',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 10, 115, 125)),
                )),
          ),
        ],
      ),
    );
  }
}
