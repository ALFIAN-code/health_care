import 'package:bloc/bloc.dart';

class LoginOrRegisterCubit extends Cubit<bool>{
  LoginOrRegisterCubit({this.isLogin = true}):super(isLogin);

  bool isLogin;

  void changeValue(){
    isLogin = !isLogin;
    emit(isLogin);
  }

  // void value(){
  //   emit(isLogin);
  // }
}
 
LoginOrRegisterCubit loginOrRegister = LoginOrRegisterCubit();