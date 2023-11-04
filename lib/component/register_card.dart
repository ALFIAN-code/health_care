import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_care/controller/login_or_register.dart';
import 'package:health_care/component/login_card.dart';
import 'package:health_care/page/mainpage.dart';
import 'package:health_care/style.dart';

class RegisterCard extends StatelessWidget {
  const RegisterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        width: 550,
        height: 850,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(blurRadius: 16, color: Colors.black.withOpacity(0.08))
        ], borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                'Create an account',
                style: bold27.copyWith(color: const Color(0xff515151)),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Lets start with yout adventure',
                style: regular14.copyWith(color: const Color(0xff838383)),
              ),
              const SizedBox(
                height: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Username',
                    style: semibold16.copyWith(
                        color: const Color(0xff6C6C6C).withOpacity(0.8)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextField(
                    hint: 'Bagus Alfian',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Email',
                    style: semibold16.copyWith(
                        color: const Color(0xff6C6C6C).withOpacity(0.8)),
                  ),
                  const CustomTextField(
                    hint: 'example@gmail.com',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Password',
                    style: semibold16.copyWith(
                        color: const Color(0xff6C6C6C).withOpacity(0.8)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const CustomTextField(
                    hint: 'xxxxxxxxx',
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomButton(
                    onTap: () {Navigator.pushReplacementNamed(context, MainPage.mainRoute);},
                    color: mainColor.withOpacity(0.66),
                    child: Text(
                      'Sign In',
                      style:
                          bold16.copyWith(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Divider(
                                thickness: 3,
                                color:
                                    const Color(0xff727272).withOpacity(0.6))),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'Or sign in with ',
                            style: bold10.copyWith(
                                color:
                                    const Color(0xff727272).withOpacity(0.9)),
                          ),
                        ),
                        Expanded(
                            child: Divider(
                                thickness: 3,
                                color:
                                    const Color(0xff727272).withOpacity(0.6))),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomButton(
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'lib/asset/icons8-google.svg',
                          height: 35,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Sign In with Google',
                          style: bold14.copyWith(
                              color: const Color(0xff525252).withOpacity(0.8)),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: bold10.copyWith(color: const Color(0xff727272)),
                      ),
                      TextButton(
                          onPressed: () {
                            loginOrRegister.changeValue();
                          },
                          child: Text(
                            'Sign in',
                            style: bold10.copyWith(color: mainColor),
                          ))
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
