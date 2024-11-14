class CommentModel {
  final String userImage;
  final String userName;
  final String comment;

  CommentModel(
      {required this.comment, required this.userImage, required this.userName});
}

List<CommentModel> comments = [
  CommentModel(
      comment: 'Lorem ipsum dolor sit amet, consectetur consequat. Duis...',
      userImage: 'images/avatar1.jpg',
      userName: 'Beverly Beverly'),
  CommentModel(
      comment: 'Lorem ipsum dolor sit amet, consectetur consequat. Duis...',
      userImage: 'images/avatar2.jpg',
      userName: 'Lilly Mei'),
  CommentModel(
      comment: 'Lorem ipsum dolor sit amet, consectetur consequat. Duis...',
      userImage: 'images/avatar3.jpg',
      userName: 'Laura Summers'),
  CommentModel(
      comment: 'Lorem ipsum dolor sit amet, consectetur consequat. Duis...',
      userImage: 'images/avatar4.jpg',
      userName: 'Kaitlyn Hills')
];
