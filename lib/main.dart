// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quotes_app/Widgets/Cards.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Quotes(),
    );
  }
}

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  State<Quotes> createState() => _QuotesState();
}

class BestQuote {
  String title;
  String person;
  BestQuote({required this.title, required this.person});
}

class _QuotesState extends State<Quotes> {
  List Allquotes = [
    BestQuote(
        person: "Mahmoud emad ", title: "– من كرمت عليه نفسه هان عليه ماله."),
    BestQuote(
        person: " Mahmoud emad",
        title: "– إن الله جعل مكارم الأخلاق ومحاسنها وصلا بيننا وبينه."),
    BestQuote(person: "Mahmoud emad ", title: "– من أطال الأمل أساء العمل."),
  ];

  deleteQuotes(BestQuote item) {
    setState(() {
      Allquotes.remove(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color.fromARGB(255, 175, 76, 114),
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          backgroundColor: Colors.teal[800],
          title: Text(
            "Best Quotes",
            style: TextStyle(fontSize: 27),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
              children: Allquotes.map((item) => CardWidget(
                    item: item,
                    delete: deleteQuotes,
                    mytitle: item.title,
                    auther: item.person,
                  )).toList()),
        ),
      ),
    );
  }
}
