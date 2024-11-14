class JournalModel {
  final String backgroundImage;
  final String journalName;

  JournalModel({required this.backgroundImage, required this.journalName});
}

List<JournalModel> journals = [
  JournalModel(
    backgroundImage: 'images/camping.jpg',
    journalName: 'Camping Trips',
  ),
  JournalModel(
    backgroundImage: 'images/carShow.jpg',
    journalName: 'Car Show',
  ),
  JournalModel(
    backgroundImage: 'images/food.jpg',
    journalName: 'Food',
  ),
  JournalModel(
    backgroundImage: 'images/hicking.jpg',
    journalName: 'Hiking Trails',
  ),
  JournalModel(
    backgroundImage: 'images/festival.jpg',
    journalName: 'Festivals',
  ),
];
