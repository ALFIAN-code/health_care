import 'package:flutter/material.dart';
import 'package:health_care/style.dart';

class ChatInput extends StatelessWidget {
  const ChatInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: TextField(
          style: bold14.copyWith(color: const Color(0xff979797), fontSize: 15),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Enter Message',
            hintStyle: bold14.copyWith(color: const Color(0xff979797).withOpacity(0.6))
          ),
        )),
        const SizedBox(
          width: 30,
        ),
        const Icon(Icons.photo_rounded, size: 35, color: Color(0xff515151),),
        const SizedBox(width: 20,),
        const Icon(Icons.mic, size: 35, color: Color(0xff515151),),
        const SizedBox(
          width: 50,
        ),
        const Icon(Icons.send_rounded, size: 50, color: Color(0xff6599D6),)
      ],
    );
  }
}