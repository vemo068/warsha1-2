class Doctor {
  final String name;
  final String speciality;
  final String imgProfile;
  final int expYears;

  Doctor(
      {required this.name,
      required this.speciality,
      required this.imgProfile,
      required this.expYears});
}





List<Doctor> doctors = [
  Doctor(
      name: "Dr ammar",
      speciality: "Pathology",
      imgProfile: "assets/profile1.png",
      expYears: 5),
  Doctor(
      name: "Dr massoudi",
      speciality: "eyes",
      imgProfile: "assets/profile2.png",
      expYears: 15),
  Doctor(
      name: "Dr tedjani",
      speciality: "Internal medicine",
      imgProfile: "assets/profile1.png",
      expYears: 20),
  Doctor(
      name: "Dr ammar",
      speciality: "general",
      imgProfile: "assets/profile3.png",
      expYears: 9),
  Doctor(
      name: "Dr ammar",
      speciality: "Allergy and immunology",
      imgProfile: "assets/profile2.png",
      expYears: 8),
  Doctor(
      name: "Dr ammar",
      speciality: "dentist",
      imgProfile: "assets/profile3.png",
      expYears: 10),
];
