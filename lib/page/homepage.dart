import 'package:flutter/material.dart';
import 'package:health_care/component/doctor_card.dart';
import 'package:health_care/component/services_item.dart';
import 'package:health_care/component/timeline.dart';
import 'package:health_care/model/doctor_model.dart';
import 'package:health_care/model/services_model.dart';
import 'package:health_care/model/user_model.dart';
import 'package:health_care/style.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final String firstName = (userModel.name.split(' ').length >= 2)
      ? userModel.name.split(' ').first
      : userModel.name;

  final List<String> historyDisease = ['Diare', 'Pilek', 'Demam Berdarah', 'Asma', 'Cacar air', 'Iritasi Kulit'];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // head
              const SizedBox(
                height: 80,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(text: 'Hallo, ', style: medium27, children: [
                          TextSpan(text: firstName, style: semibold27)
                        ]),
                      ),
                      Text(
                        'Bagaimana kabarmu',
                        style: regular16,
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'location',
                            style: regular16,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 40,
                          )
                        ],
                      ),
                      Text(
                        userModel.location,
                        style: semibold16,
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              //health services
              Text(
                'Health Services',
                style: bold31,
              ),
              // nerby doctor
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: servicesList.map((item) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 90),
                      child: ServicesItem(
                          name: item.name, imagePath: item.imagePath),
                    );
                  }).toList(),
                ),
              ),

              const SizedBox(
                height: 150,
              ),

              Text(
                'Nearby Doctor',
                style: bold31,
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 200, 0),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 390 / 110,
                    mainAxisSpacing: 50,
                    crossAxisSpacing: 100,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return DoctorCard(
                      expertise: doctorList[index].expertise,
                      imagePath: doctorList[index].imagePath,
                      name: doctorList[index].name,
                      distance: doctorList[index].distance,
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Text(
                'History Disease',
                style: bold31,
              ),
              const SizedBox(
                height: 40,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                  child: Row(
                children: 
                  historyDisease.map((item) {
                    return Timeline(isFirst:(item == historyDisease[0]), disease: item,);
                  } ).toList()
                ,
              )),
              const SizedBox(
                height: 70,
              )
            ],
          ),
        ),
      ),
    );
  }
}
