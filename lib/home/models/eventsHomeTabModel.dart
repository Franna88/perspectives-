class EventsHomeTabModel {
  final String perspectiveImage;
  final String header;
  final String startdate;
  final String amountPeople;

  EventsHomeTabModel(
      {required this.amountPeople,
      required this.startdate,
      required this.header,
      required this.perspectiveImage});
}

List<EventsHomeTabModel> eventstab = [
  EventsHomeTabModel(
      amountPeople: '23',
      startdate: 'SAT, May 9',
      header: 'CHEAT Days',
      perspectiveImage: 'images/food.jpg'),
  EventsHomeTabModel(
      amountPeople: '7',
      startdate: 'FRI, May 3',
      header: 'Car Show',
      perspectiveImage: 'images/carShow.jpg'),
  EventsHomeTabModel(
      amountPeople: '8',
      startdate: 'MON, May 5',
      header: 'Camping Trip',
      perspectiveImage: 'images/camping.jpg'),
];
