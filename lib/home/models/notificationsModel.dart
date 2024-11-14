class NotificationsModel {
  final String userAvatar;
  final String timeStamp;
  final String userName;
  final String notification;
  final Function() ontap;

  NotificationsModel(
      {required this.notification,
      required this.ontap,
      required this.timeStamp,
      required this.userAvatar,
      required this.userName});
}

List<NotificationsModel> notifications = [
  NotificationsModel(
      notification: 'has invited you to an event.',
      ontap: () {},
      timeStamp: '5d',
      userAvatar: 'images/avatar2.jpg',
      userName: 'Kaitlyn Many'),
  NotificationsModel(
      notification: 'has invited you to an event.',
      ontap: () {},
      timeStamp: '1w',
      userAvatar: 'images/avatar3.jpg',
      userName: 'Lilly Mei'),
  NotificationsModel(
      notification: 'has invited you to an event.',
      ontap: () {},
      timeStamp: '3d',
      userAvatar: 'images/avatar4.jpg',
      userName: 'Sammy Kelly'),
];
