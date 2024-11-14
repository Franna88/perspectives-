class PerspectivesHomeTabModel {
  final String perspectiveImage;
  final String header;
  final String date;
  final String amountPeople;

  PerspectivesHomeTabModel(
      {required this.amountPeople,
      required this.date,
      required this.header,
      required this.perspectiveImage});
}

List<PerspectivesHomeTabModel> perspectivestab = [
  PerspectivesHomeTabModel(
      amountPeople: '23',
      date: 'SAT, May 9',
      header: 'Park Live Festival',
      perspectiveImage: 'images/festival.jpg'),
  PerspectivesHomeTabModel(
      amountPeople: '8',
      date: 'MON, May 5',
      header: 'Camping Trip',
      perspectiveImage: 'images/camping.jpg'),
  PerspectivesHomeTabModel(
      amountPeople: '7',
      date: 'FRI, May 3',
      header: 'Car Show',
      perspectiveImage: 'images/carShow.jpg'),
];
