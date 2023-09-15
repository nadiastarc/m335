import 'package:flutter/material.dart';
import 'package:myquiz/main.dart';
import 'package:myquiz/style/style.dart';

PreferredSizeWidget myAppBar(String title) {
  return AppBar(
    backgroundColor: Colors.white,
    title: Text(
      title,
      style: TextStyle(color: Colors.black),
    ),
  );
}

Widget answerCard(String answer, BuildContext context, {bool? check}) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.1,
    width: MediaQuery.of(context).size.width,
    child: Card(
      color: (check == null)
          ? Colors.white70
          : (check)
              ? Colors.green
              : Colors.red,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            answer,
            style: TextStyle(color: Colors.black, fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ),
  );
}

Widget bigButton(
    BuildContext context, Widget Function() createPage, String name) {
  return Container(
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(MediaQuery.of(context).size.width,
              MediaQuery.of(context).size.height * 0.1),
          backgroundColor: Colors.white60,
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => createPage()));
        },
        child: Text(
          name,
          style: headerTextStyle(),
        )),
  );
}
