import 'package:get/get_rx/get_rx.dart';

class LoginOrRegister{

  var isLogin = true.obs;

  void changeValue(){
    isLogin.value = !isLogin.value;
  }
}
 
LoginOrRegister loginOrRegister = LoginOrRegister();