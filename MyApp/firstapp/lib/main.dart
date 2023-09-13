import 'package:firstapp/side/quizPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // use Material 3
          useMaterial3: true),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StudyFy'),
      ),
      body: const Center(),
      floatingActionButton: SpeedDial(
          icon: Icons.share,
          backgroundColor: Colors.cyanAccent,
          children: [
            SpeedDialChild(
              child: const Icon(Icons.book),
              label: 'Study',
              backgroundColor: Colors.greenAccent,
              onTap: () {Navigator.push(context,
        MaterialPageRoute(builder: (context) => const MyAppp())); },
            ),
            SpeedDialChild(
              child: const Icon(Icons.edit),
              label: 'Create',
              backgroundColor: Colors.greenAccent,
              onTap: () {/* Do something */},
            ),
            SpeedDialChild(
              child: const Icon(Icons.chat),
              label: 'Input',
              backgroundColor: Colors.greenAccent,
              onTap: () {/* Do something */},
            ),
          ]),
    );
  }
}