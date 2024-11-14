class ProfilePerspectives {
  final String perspectiveImage;
  final String header;
  final String date;
  final String amountPeople;

  ProfilePerspectives(
      {required this.amountPeople,
      required this.date,
      required this.header,
      required this.perspectiveImage});
}

List<ProfilePerspectives> profilePerspectives = [
  ProfilePerspectives(
      amountPeople: '23',
      date: 'SAT, May 9',
      header: 'Park Live Festival',
      perspectiveImage: 'images/festival.jpg'),
  ProfilePerspectives(
      amountPeople: '8',
      date: 'MON, May 5',
      header: 'Camping Trip',
      perspectiveImage: 'images/camping.jpg'),
  ProfilePerspectives(
      amountPeople: '7',
      date: 'FRI, May 3',
      header: 'Car Show',
      perspectiveImage: 'images/carShow.jpg'),
];
