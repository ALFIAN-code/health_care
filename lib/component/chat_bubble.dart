import 'package:flutter/material.dart';
import 'package:health_care/style.dart';

class ChatBubbble extends StatelessWidget {
  const ChatBubbble(
      {super.key,
      this.isLeft = false,
      required this.message,
      required this.imagePath,
      this.isMoreThanOne = false});
  final bool isLeft;
  final bool isMoreThanOne;
  final String message;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        (isMoreThanOne && isLeft)
            ? const SizedBox(
                width: 40,
              )
            : (isLeft)
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: Image.asset(
                      imagePath,
                      height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                    ))
                : const SizedBox(),
                const SizedBox(width: 30,),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          width: 470,
          decoration: BoxDecoration(
              color: const Color(0xffEFF3F4),
              borderRadius: BorderRadius.circular(30)),
          child: Center(
            child: Text(message, style: regular10,),
          ),
        ),
        const SizedBox(width: 30,),
        (isMoreThanOne && !isLeft)
            ? const SizedBox(width: 40,)
            : (!isLeft)
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: Image.asset(
                      imagePath,
                      height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                    ))
                : const SizedBox(),
      ],
    );
  }
}
