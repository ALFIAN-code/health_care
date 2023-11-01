import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_care/bloc/pageState.dart';
import 'package:health_care/component/navbar_button.dart';
import 'package:health_care/model/user_model.dart';
import 'package:health_care/page/chat_page.dart';
import 'package:health_care/page/homepage.dart';
import 'package:health_care/page/login_register.dart';
import 'package:health_care/page/setting_page.dart';
import 'package:health_care/style.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  static const mainRoute = '/main';



  final PageStateCubit pageState = PageStateCubit();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffEFF3F4),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 250,
              margin: const EdgeInsets.only(right: 20),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xffFAFAFA),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0x0d000000),
                          blurRadius: 10,
                          offset: Offset(6, 4))
                    ],
                    borderRadius:
                        BorderRadius.horizontal(right: Radius.circular(30))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    SvgPicture.asset('lib/asset/health_care_logo.svg',
                        width: 150, fit: BoxFit.cover),
                    const SizedBox(
                      height: 50,
                    ),
                    StreamBuilder(
                      stream: pageState.stream,
                      builder: (context, snapshot) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              NavbarButton(
                                onTap: () => pageState.isHomepage(),
                                icon: Icon(
                                  Icons.home_rounded,
                                  size: 35,
                                  color: Colors.black.withOpacity(0.7),
                                ),
                                text: 'Home',
                                selected:
                                    (pageState.pageState == 1) ? true : false,
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              NavbarButton(
                                  onTap: () => pageState.isChatpage(),
                                  icon: Icon(
                                    Icons.mark_chat_unread_rounded,
                                    size: 30,
                                    color: Colors.black.withOpacity(0.7),
                                  ),
                                  text: 'Chat',
                                  selected: (pageState.pageState == 2)
                                      ? true
                                      : false),
                              const SizedBox(
                                height: 25,
                              ),
                              NavbarButton(
                                  onTap: () => pageState.isSetting(),
                                  icon: Icon(
                                    Icons.settings_rounded,
                                    size: 30,
                                    color: Colors.black.withOpacity(0.7),
                                  ),
                                  text: 'Setting',
                                  selected:
                                      (pageState.pageState == 3) ? true : false)
                            ],
                          ),
                        );
                      },
                    ),
                    const Expanded(child: SizedBox()),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: backgroundColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10000),
                              child: Image.asset(
                                userModel.imagePath,
                                height: 100,
                                width: 100,
                                fit: BoxFit.cover,
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            userModel.name,
                            style: semibold16,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, LoginRegister.mainRoute);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.logout_rounded),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Logout',
                            style: semibold10,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: StreamBuilder(
                stream: pageState.stream,
                initialData: pageState.pageState,
                builder: (context, snapshot) {
                  if (snapshot.data == 1) {
                    return Homepage();
                  } else if (snapshot.data == 2) {
                    return  ChatPage();
                  } else if (snapshot.data == 3) {
                    return const SettingPage();
                  } else {
                    return const Center(
                      child: Text('state error'),
                    );
                  }
                },
              ),
            )
          ],
        ),
      );
  }
}