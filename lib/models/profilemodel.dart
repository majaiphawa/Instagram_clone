class ProfileModel {
  String imagePath;
  String profileName;
  ProfileModel({
    required this.imagePath,
    required this.profileName,
  });
}

List<ProfileModel> profilemodels = [
  ProfileModel(
      imagePath:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQd6CHVUwBkRkFuqx7rlLB9jrIWMX4oHF1MLg&usqp=CAU",
      profileName: "Davis"),
  ProfileModel(
      imagePath:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoZ0IPl16VPnGVeXMM3YYel58VGTJe2hQb5Q&usqp=CAU',
      profileName: 'Megan'),
  ProfileModel(
      imagePath:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuhEB5TN6Ku-wVjzZa_CiltogXAj4q_Cj30A&usqp=CAU',
      profileName: 'Gracy'),
  ProfileModel(
      imagePath:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM8a2MUfdySK0SpBsRoLJ7GvrRP0mMIkixcw&usqp=CAU",
      profileName: "Broook"),
  ProfileModel(
      imagePath:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7TK-TRE8PM5nsj7u7MtATLzN4Pue05C8B0A&usqp=CAU",
      profileName: "nancy")
];
