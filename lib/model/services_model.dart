class ServicesModel{
  String name;
  String imagePath;

  ServicesModel({required this.imagePath,required this.name});
}

List<ServicesModel> servicesList = [
  ServicesModel(imagePath: 'lib/asset/layanan_bidan.png', name: 'Layanan Bidan'),
  ServicesModel(imagePath: 'lib/asset/toko_kesehatan.png', name: 'Toko Kesehatan'),
  ServicesModel(imagePath: 'lib/asset/cek_kesehatan.png', name: 'Cek Kesehatan'),
  ServicesModel(imagePath: 'lib/asset/chat_doctor.png', name: 'Chat Dokter'),
];