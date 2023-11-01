import 'package:flutter/material.dart';
import 'package:health_care/style.dart';

class DoctorChat extends StatelessWidget {
  const DoctorChat({super.key, required this.imagePath, required this.name});

  final String imagePath;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.03),
                blurRadius: 5,
                offset: const Offset(4, 6))
          ]),
      child: Row(
        children: [
          Flexible(
            fit: FlexFit.tight,
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Flexible(
              flex: 11,
              fit: FlexFit.tight,
              child: Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      name,
                      style: bold14,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus mollis tellus in ligula convallis, eu rutrum massa fringilla. Praesent et mollis est. Vestibulum rhoncus ut quam iaculis tempus. ',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: regular10.copyWith(
                          fontSize: 13, color: const Color(0xff828282)),
                    )
                  ],
                ),
              )),
          Flexible(
              flex: 3,
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('14:30', style: bold10,),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1000),
                      color: mainColor
                    ),
                    child: Center(child: Text('5', style: bold10,)),
                  ),
                  
                ],
              ))
        ],
      ),
    );
  }
}
