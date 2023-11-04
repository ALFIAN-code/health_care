
import 'package:get/get_rx/get_rx.dart';

class PageState {
  var pageState = 1.obs;

  void toHomepage(){
    pageState.value = 1;
  } 

  void toChatpage(){
    pageState.value = 2;
  }

  void toSetting(){
    pageState.value = 3;
  }
}