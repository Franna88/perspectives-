class FriendsFamilyModel {
  final String userAvatar;

  final String userName;

  FriendsFamilyModel({required this.userAvatar, required this.userName});
}

List<FriendsFamilyModel> family = [
  FriendsFamilyModel(userAvatar: 'images/avatar1.jpg', userName: 'Kimmy Ann'),
  FriendsFamilyModel(userAvatar: 'images/avatar2.jpg', userName: 'Jamie Sim'),
  
];


List<FriendsFamilyModel> friends = [
  FriendsFamilyModel(userAvatar: 'images/avatar3.jpg', userName: 'Lilly Mei'),
  FriendsFamilyModel(userAvatar: 'images/avatar4.jpg', userName: 'Sam Watson'),
];