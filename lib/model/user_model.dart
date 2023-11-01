class UserModel {
  String imagePath;
  String name;
  String location;
  UserModel(
      {required this.imagePath, required this.name, required this.location});
}

final UserModel userModel = UserModel(
    imagePath: 'lib/asset/photo-1529665253569-6d01c0eaf7b6.jpeg',
    name: 'Bagus Alfian',
    location: 'Tembelang');
