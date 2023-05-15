import 'package:flutter/material.dart';
import 'read_book.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gazette',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Gazette'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map bookData = {
    "assets/pdf/history_of_media_in_ethiopia.pdf": [
      "History of Media In Ethiopia",
      "Unknown"
    ],
    "assets/pdf/introduction_to_communication.pdf": [
      "Introduction to Communication",
      "Yeah, Mr."
    ],
    "assets/pdf/introduction_to_journalim.pdf": [
      "Introduction to Journalism",
      "Uhuh"
    ],
    "assets/pdf/introcution_to_public_Relations.pdf": [
      "Introduction to Public Relations",
      "Wait a min"
    ],
    "assets/pdf/the_nature_and_defination_of_communication.pdf": [
      "The Nature and Difination of Communication",
      "William who?"
    ],
    "assets/pdf/what_is_journalism.pdf": ["What is Journalism?", "Mr. Que"]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text(
          widget.title,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
          itemCount: bookData.length,
          itemBuilder: (context, index) {
            return Container(
                margin: const EdgeInsets.only(left: 24, right: 24, top: 24),
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1,
                          spreadRadius: 0.1,
                          offset: Offset(0, 1))
                    ]),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ReadBook(path: bookData.keys.toList()[index])));
                  },
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          bookData.values.toList()[index][0],
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(bookData.values.toList()[index][1],
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                                color: Colors.black))
                      ]),
                ));
          }),
    );
  }
}
