import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  String name;
  String location;
  String episode;
  String imageUrl;

  CharacterCard(
      {this.name = '',
      this.location = '',
      this.episode = '',
      this.imageUrl = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 200,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ]),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ))),
          Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(name,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24)),
                          Text('Alive - Human',
                              style: TextStyle(
                                  color: Colors.grey[400], fontSize: 18)),
                        ]),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Last known location:',
                              style: TextStyle(
                                  color: Colors.grey[600], fontSize: 18)),
                          Text(location,
                              style: TextStyle(
                                  color: Colors.grey[400], fontSize: 20)),
                        ]),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('First seen in:',
                              style: TextStyle(
                                  color: Colors.grey[600], fontSize: 18)),
                          Text(episode,
                              style: TextStyle(
                                  color: Colors.grey[400], fontSize: 18))
                        ]),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
