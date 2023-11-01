import 'package:bloc/bloc.dart';

class PageStateCubit extends Cubit<int> {
  PageStateCubit({this.pageState = 1}) : super(pageState);
  int pageState ;

  void isHomepage(){
    emit(pageState = 1);
  } 

  void isChatpage(){
    emit(pageState = 2);
  }

  void isSetting(){
    emit(pageState = 3);
  }

}