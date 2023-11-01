import 'package:flutter/material.dart';
import 'package:health_care/bloc/login_or_register.dart';
import 'package:health_care/component/login_card.dart';
import 'package:health_care/component/register_card.dart';

class LoginRegister extends StatelessWidget {
  static const mainRoute = '/loginRegister';
  const LoginRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffebeff0),
      child: Stack(
        children: [
          Align(
              alignment: const Alignment(-0.7, 0),
              child: Image.asset(
                'lib/asset/login-Ilustration.jpg',
                colorBlendMode: BlendMode.multiply,
                color: const Color(0xffebeff0),
                height: 700,
                fit: BoxFit.cover,
              )),
          Align(
              alignment: const Alignment(-1, 1.2),
              child: Image.asset(
                'lib/asset/dot dot vertical.png',
                height: 300,
                fit: BoxFit.cover,
              )),
          Align(
              alignment: const Alignment(1.1, 0.75),
              child: Image.asset(
                'lib/asset/dot dot horizontal.png',
                height: 120,
                fit: BoxFit.cover,
              )),
          Align(
              alignment: const Alignment(0.1, -1.25),
              child: Image.asset(
                'lib/asset/plus plus vertical.png',
                height: 210,
                fit: BoxFit.cover,
              )),
          Align(
              alignment: const Alignment(0.1, 1.14),
              child: Image.asset(
                'lib/asset/plus plus horizontal.png',
                height: 100,
                fit: BoxFit.cover,
              )),
          StreamBuilder(
            stream: loginOrRegister.stream,
            builder: (context, snapshot) {
              return (loginOrRegister.isLogin == true)
                  ? const Align(
                      alignment: Alignment(0.7, 0), child: LoginCard())
                  : const Align(
                      alignment: Alignment(0.7, 0), child: RegisterCard());
            },
          )
        ],
      ),
    );
  }
}
