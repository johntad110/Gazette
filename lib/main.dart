import 'package:flutter/material.dart';

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
    "History of Media In Ethiopia": "Unknown",
    "Introduction to Communication": "Yeah, Mr.",
    "Introduction to Journalism": "Uhuh",
    "Introduction to Public Relations": "Wait a min",
    "The Nature and Difination of Communication": "William who?",
    "What is Journalism?": "Mr. Que"
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
                  onTap: () {},
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          bookData.keys.toList()[index],
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(bookData.values.toList()[index],
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
