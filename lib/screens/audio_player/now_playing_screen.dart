import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:music_app/models/artist_model.dart';
import 'package:music_app/screens/widget.dart';
import 'package:seekbar/seekbar.dart';

class NowPlayingScreen extends StatelessWidget {
  final ArtistModel artistModel;

  const NowPlayingScreen({Key key, this.artistModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
                fit: BoxFit.cover,
                image: AssetImage(artistModel.image))),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
          child: Column(
            children: <Widget>[
              buildCurrentSongScreenAppBar(
                  songTitle: artistModel.songTitle,
                  artist: artistModel.name,
                  onPressed: () => Navigator.pop(context)),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(artistModel.image))),
                  height: 250,
                  width: 280,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Expanded(
                child: Container(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      ClipPath(
                        clipper: OvalTopBorderClipper(),
                        child: Container(
                          width: double.infinity,
                          color: Colors.white,
                          height: 180,
                        ),
                      ),
                      Positioned(
                          top: 2,
                          child: buildRoundButton(
                              size: 50,
                              height: 75,
                              width: 75,
                              icon: Icons.play_arrow)),
                      Positioned(
                          top: 15,
                          left: 60,
                          child: buildRoundButton(
                              size: 40,
                              height: 50,
                              width: 50,
                              icon: Icons.skip_previous)),
                      Positioned(
                          top: 15,
                          right: 60,
                          child: buildRoundButton(
                              size: 40,
                              height: 50,
                              width: 50,
                              icon: Icons.skip_next)),
                      Positioned(
                        top: 100,
                        width: 350,
                        child: Container(
                          child: Row(
                            children: <Widget>[
                              Text(
                                '0:00',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800),
                              ),
                              Expanded(
                                child: SeekBar(
                                  barColor: Colors.grey,
                                  value: 0.5,
                                  progressColor: Colors.purple,
                                  thumbColor: Colors.white,
                                  thumbRadius: 18,
                                ),
                              ),
                              Text('0:12',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800))
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(
                                Icons.shuffle,
                                size: 28,
                                color: Colors.black,
                              ),
                              onPressed: () {}),
                          IconButton(
                              icon: Icon(Icons.repeat,
                                  size: 28, color: Colors.black),
                              onPressed: () {}),
                          IconButton(
                              icon: Icon(Icons.favorite_border,
                                  size: 28, color: Colors.black),
                              onPressed: () {}),
                          IconButton(
                              icon: Icon(Icons.queue_music,
                                  size: 30, color: Colors.black),
                              onPressed: () {}),
                          IconButton(
                              icon: Icon(Icons.more_vert,
                                  size: 28, color: Colors.black),
                              onPressed: () {}),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
