class ArtistModel {
  final String name;
  final String image;
  final String songTitle;
  final double status;
  final int id;

  ArtistModel({this.name, this.image, this.songTitle, this.status, this.id});
}

class SongList {
  final artist = [
    ArtistModel(
        name: 'Ada',
        id: 1,
        songTitle: 'you are able',
        image: 'image/ada.jpg',
        status: 0.4),
    ArtistModel(
        name: 'Frank Edwards',
        id: 2,
        songTitle: 'You too de bless me',
        image: 'image/frank.jpg',
        status: 0.6),
    ArtistModel(
        name: 'Joe Praise',
        id: 3,
        songTitle: 'Miracle Baba',
        image: 'image/joe.jpg',
        status: 0.5),
    ArtistModel(
        name: 'Mercy Chinwo',
        status: 0.8,
        songTitle: 'Excess Love',
        id: 4,
        image: 'image/mercy.jpg'),
    ArtistModel(
        id: 5,
        name: 'Nathaniel Bassey',
        status: 0.2,
        songTitle: 'Wonderful Wonder',
        image: 'image/nathaniel.jpg'),
    ArtistModel(
        id: 6,
        name: 'Steve Crown',
        songTitle: 'You are great',
        image: 'image/steve.jpg',
        status: 0.1),
    ArtistModel(
        id: 7,
        name: 'Sinach',
        status: 0.7,
        songTitle: 'The name of Jesus',
        image: 'image/sinach.jpg'),
    ArtistModel(
        id: 8,
        name: 'Preye Odede',
        songTitle: 'Ebezina',
        status: 0.3,
        image: 'image/Preye.png'),
    ArtistModel(
        id: 9,
        name: 'Mercy Chinwo',
        songTitle: 'Igwe',
        status: 0.7,
        image: 'image/mercy.jpg'),
    ArtistModel(
        id: 10,
        name: 'Nathaniel Bassey',
        songTitle: 'The Champion',
        status: 0.0,
        image: 'image/nathaniel.jpg'),
  ];
}
