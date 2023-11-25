
// import 'package:get/get_rx/get_rx.dart';

class PageState {
  // var pageState = 1.obs;
  
  var pageState = 1;

  void toHomepage(){
    pageState = 1;
  } 

  void toChatpage(){
    pageState = 2;
  }

  void toSetting(){
    pageState = 3;
  }
}