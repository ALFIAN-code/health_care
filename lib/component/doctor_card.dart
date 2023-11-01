import 'package:flutter/material.dart';
import 'package:health_care/style.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard(
      {super.key,
      required this.imagePath,
      required this.expertise,
      required this.name,
      required this.distance
      });
  final String imagePath;
  final String name;
  final List<String> expertise;
  final String distance;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 100,
      // height: 50,

      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        boxShadow: [
          BoxShadow(
              color: Color(0x0d000000), blurRadius: 10, offset: Offset(6, 4))
        ],
        color: Colors.white,
      ),
      child: Row(
        children: [
          Flexible(
            fit: FlexFit.tight,
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Expanded(
              flex: 12,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: bold16.copyWith(color: const Color(0xff737373)),),
                    Text(expertise.reduce((value, element) => '$value, $element'), style:regular10.copyWith(color: const Color(0xff8A8686)) ,),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.location_on, color: Color(0xff868686),),
                        const SizedBox(width: 10,),
                        Text(distance, style: regular14.copyWith(color: const Color(0xffADADAD)),)
                      ],
                    )
                  ],
                ),
              )),
          Flexible(
            flex: 3,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xffD9D9D9).withOpacity(0.6),
              ),
              child: Center(
                child: Icon(
                  Icons.keyboard_arrow_right_rounded,
                  size: 50,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
