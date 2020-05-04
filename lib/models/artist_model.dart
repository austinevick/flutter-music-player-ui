class ArtistModel {
  final String name;
  final String image;
  final String songTitle;
  final double status;

  ArtistModel({this.name, this.image, this.songTitle, this.status});
}

class SongList {
  final artist = [
    ArtistModel(name: 'Ada', 
    songTitle: 'you are able', 
    image: 'image/ada.jpg',status: 0.4),
    ArtistModel(
        name: 'Frank Edwards',
        songTitle: 'You too de bless me',
        image: 'image/frank.jpg',status: 0.6),
    ArtistModel(
        name: 'Joe Praise',
        songTitle: 'Miracle Baba',
        image: 'image/joe.jpg',
        status: 0.5),
    ArtistModel(
        name: 'Mercy Chinwo',status: 0.8,
        songTitle: 'Excess Love',
        image: 'image/mercy.jpg'),
    ArtistModel(
        name: 'Nathaniel Bassey',status: 0.2,
        songTitle: 'Wonderful Wonder',
        image: 'image/nathaniel.jpg'),
    ArtistModel(
        name: 'Steve Crown',
        songTitle: 'You are great',
        image: 'image/steve.jpg',
        status: 0.1),
    ArtistModel(
        name: 'Sinach',status: 0.7,
        songTitle: 'The name of Jesus',
        image: 'image/sinach.jpg'),
    ArtistModel(
        name: 'Preye Odede',
        songTitle: 'Ebezina',
        status: 0.3,
        image: 'image/Preye.png'),
    ArtistModel(
        name: 'Mercy Chinwo', 
        songTitle: 'Igwe', status: 0.7,
        image: 'image/mercy.jpg'),
    ArtistModel(
        name: 'Nathaniel Bassey',
        songTitle: 'The Champion',status: 0.1,
        image: 'image/nathaniel.jpg'),
  ];
}
