import 'package:bloc/bloc.dart';

class SelectedChat extends Cubit<Map> {
  SelectedChat({required this.chatData}) : super(chatData);
  
  Map<String, String> chatData = {'name': '', 'imagePath' : '', };

  void updateData(String name, String imagePath){
    chatData['name'] = name;
    chatData['imagePath'] = imagePath;
    emit(chatData);
  }
}

