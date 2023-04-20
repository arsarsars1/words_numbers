import 'package:flutter/material.dart';
import 'package:words_numbers/words_numbers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Word to Number /\n Numbers to Words'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final textNumber = "hello world one \n How are you two";
  final numberText = "hello world 1234567";
  final number = 1234567;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          widget.title,
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            Text(
              "Word to Number",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              WordsNumbers.convertTextNumberToString(textNumber),
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
