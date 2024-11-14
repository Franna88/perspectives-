class SingleMemoryModel {
  final String userAvatar;
  final String username;
  final String content;

  const SingleMemoryModel(
      {required this.content,
      required this.userAvatar,
      required this.username});
}

List<SingleMemoryModel> singleMemories = [
  SingleMemoryModel(
      content: 'images/festival.jpg',
      userAvatar: 'images/avatar1.jpg',
      username: 'Lilly Mei'),
  SingleMemoryModel(
      content: 'images/hicking.jpg',
      userAvatar: 'images/avatar2.jpg',
      username: 'Sammy Emmary'),
  SingleMemoryModel(
      content: 'images/food.jpg',
      userAvatar: 'images/avatar3.jpg',
      username: 'Kaitlyn Manny')
];
