import 'package:flutter/material.dart';
import 'package:health_care/component/chat_bubble.dart';
import 'package:health_care/component/chat_input.dart';
import 'package:health_care/component/doctor_chat.dart';
import 'package:health_care/model/doctor_model.dart';
import 'package:health_care/model/user_model.dart';
import 'package:health_care/style.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 450,
          margin: const EdgeInsets.fromLTRB(25, 50, 45, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Chats',
                style: bold24,
              ),
              const SizedBox(
                height: 30,
              ),
              const SearchBar(),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: ListView.separated(
                  itemCount: doctorList.length,
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 20,
                  ),
                  itemBuilder: (context, index) {
                    return Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {},
                        child: DoctorChat(
                          imagePath: doctorList[index].imagePath,
                          name: doctorList[index].name,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
              margin: const EdgeInsets.fromLTRB(0, 30, 20, 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.03),
                      spreadRadius: 7,
                      offset: const Offset(-4, 4),
                      blurRadius: 5),
                ],
                color: Colors.white,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              doctorList[1].imagePath,
                              height: 60,
                              width: 60,
                              fit: BoxFit.cover,
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                doctorList[1].name,
                                style: semibold16,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                doctorList[1].expertise.reduce(
                                    (value, element) => '$value, $element'),
                                style: regular10.copyWith(
                                    color: const Color(0xff8A8686),
                                    fontSize: 14),
                              )
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.videocam_outlined,
                          size: 35,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(
                          Icons.call_outlined,
                          size: 35,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(
                          Icons.more_vert,
                          size: 35,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              ChatBubbble(
                                message:
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eu auctor velit. ',
                                imagePath: doctorList[1].imagePath,
                                isLeft: true,
                                isMoreThanOne: true,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ChatBubbble(
                                message:
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eu auctor velit. ',
                                imagePath: doctorList[1].imagePath,
                                isLeft: true,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  const Expanded(child: SizedBox()),
                                  ChatBubbble(
                                      isMoreThanOne: true,
                                      message:
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eu auctor velit. ',
                                      imagePath: userModel.imagePath),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  const Expanded(child: SizedBox()),
                                  ChatBubbble(
                                    message:
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eu auctor velit. ',
                                    imagePath: userModel.imagePath,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const ChatInput()
                  ],
                ),
              )),
        )
      ],
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
              color: const Color(0xffC5C5C5).withOpacity(0.56), width: 2)),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: medium16,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  hintText: 'Search',
                  hintStyle: medium16.copyWith(
                      color: const Color(0xff999999).withOpacity(0.58)),
                  border: InputBorder.none),
            ),
          ),
          const Icon(
            Icons.search,
            size: 35,
            color: Color(0xffB1B1B1),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
