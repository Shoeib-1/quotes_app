import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quotes_app/main.dart';

class CardWidget extends StatelessWidget {
  final String mytitle;
  final String auther;
  final Function delete;
  final BestQuote item;
  const CardWidget(
      {Key? key,
      required this.mytitle,
      required this.auther,
      required this.item,
      required this.delete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Color.fromARGB(227, 79, 204, 175),
      margin: EdgeInsets.all(15),
      color: Color.fromARGB(193, 38, 166, 153),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
      child: Container(
        padding: EdgeInsets.all(7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              mytitle,
              style: TextStyle(fontSize: 30, color: Colors.white),
              textDirection: TextDirection.rtl,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    delete(item);
                  },
                  icon: Icon(Icons.delete),
                  iconSize: 27,
                  color: Colors.white,
                ),
                Text(
                  auther,
                  style: TextStyle(fontSize: 15, color: Colors.white),
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
