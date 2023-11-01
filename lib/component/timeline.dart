import 'package:flutter/material.dart';
import 'package:health_care/style.dart';

class Timeline extends StatelessWidget {
  const Timeline({super.key, this.isFirst = false, required this.disease});

  final bool isFirst;
  final String disease;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            (isFirst)
                ? const SizedBox(
                    width: 150,
                  )
                : Container(
                    width: 150,
                    height: 7,
                    decoration: const BoxDecoration(color: Color(0xffCDF463))),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1000),
                  color: const Color(0xffCDF463)),
            ),
            Container(
                width: 150,
                height: 7,
                decoration: const BoxDecoration(color: Color(0xffCDF463))),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          margin: const EdgeInsets.only(left: 35),
          height: 100,
          width: 270,
          decoration: BoxDecoration(boxShadow: const [
            BoxShadow(
                color: Color(0x0d000000), blurRadius: 10, offset: Offset(6, 4))
          ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              disease,
              style: bold14.copyWith(
                  color: const Color(0xff484848).withOpacity(0.79)),
            ),
          ),
        ),
      ],
    );
  }
}
