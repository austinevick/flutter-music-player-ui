import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

buildSongList({title, subTitle, icon,value}) {
  return ListTile(
    title: Text(title,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
    trailing: CircularPercentIndicator(radius: 50,startAngle: value,
    center: Container(height: 10,width: 10,color: Colors.black38,),),
    leading: Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          image: DecorationImage(fit: BoxFit.cover, 
          image: AssetImage(icon))),
    ),
    subtitle: Text(subTitle,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800)),
  );
}

buildMusicLibrary(
    {Widget icon, String title, String subtitle, Function onTap}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Card(
      elevation: 8,
      shape: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        onTap: onTap,
        title: Text(title,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        trailing:
            IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: () {}),
        leading: icon,
        subtitle: Text(subtitle,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800)),
      ),
    ),
  );
}

buildBottomApp({Function function, Function onPressed}) {
  return SizedBox(height: 80,
            child: BottomAppBar(
    color: Colors.purple,
    notchMargin: 25,
    shape: CircularNotchedRectangle(),
    child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: IconButton(
                    icon: Icon(Icons.library_music,
                        size: 35, color: Colors.white),
                    onPressed: onPressed),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: IconButton(
                    icon: Icon(Icons.settings, size: 35, color: Colors.black),
                    onPressed: function),
              )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Library',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  'Settings',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              )
          ],
        )
      ],
    )),
  );
}
