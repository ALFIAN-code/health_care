class DoctorModel {
  const DoctorModel(
      {required this.name,
      required this.expertise,
      required this.imagePath,
      required this.distance});
  final String name;
  final String imagePath;
  final List<String> expertise;
  final String distance;
}

List<DoctorModel> doctorList = const [
  DoctorModel(
      name: 'Dr. Bianca Olivia',
      expertise: ['Nutrisionis', 'neurologist'],
      imagePath: 'lib/asset/doctor/pexels-antoni-shkraba-5215024.jpg',
      distance: '5 KM'),
  DoctorModel(
      name: 'Dr. Maya Isabella',
      expertise: ['Nutrisionis', 'neurologist'],
      imagePath: 'lib/asset/doctor/pexels-jeff-denlea-3714743.jpg',
      distance: '5 KM'),
  DoctorModel(
      name: 'Dr. Isabella Nadia',
      expertise: ['Nutrisionis', 'neurologist'],
      imagePath: 'lib/asset/doctor/pexels-antoni-shkraba-6749778.jpg',
      distance: '5 KM'),
  DoctorModel(
      name: 'Dr. Jasmine Kiara',
      expertise: ['Nutrisionis', 'neurologist'],
      imagePath: 'lib/asset/doctor/pexels-anna-shvets-4167541.jpg',
      distance: '5 KM'),
];
