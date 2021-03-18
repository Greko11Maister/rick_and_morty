import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CharacterCard extends StatelessWidget {
  final String url;

  CharacterCard({Key key, this.url = "https://cdn.pixabay.com/photo/2017/06/28/04/29/adult-2449725_960_720.jpg"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Card(
        color: Color.fromRGBO(60, 62, 68, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           // ClipRRect(borderRadius: BorderRadius.vertical(top: Radius.circular(20)), child: Image.network(url)),
            ClipRRect(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20)
                ),
                child: Image.network(url)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Baby Legs",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    MdiIcons.moonFull,
                    size: 12,
                    color: Colors.green,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: Text(
                      "Alive - Human",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0).copyWith(top: 20, bottom: 4),
              child: Text("Last know location:", style: TextStyle(color: Colors.grey, fontSize: 14)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("Intermensional Cable", style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0).copyWith(top: 20, bottom: 4),
              child: Text("First see in:", style: TextStyle(color: Colors.grey, fontSize: 14)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 10),
              child: Text("Rixty Minutes", style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
