import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: GradeCalculator(),
    );
  }
}

class GradeCalculator extends StatelessWidget {
  GradeCalculator({Key? key}) : super(key: key);
  final myGradeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grade Calculator")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: myGradeController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "write your grade",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  prefixIcon: Icon(
                    Icons.percent,
                  )),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              int? grade = int.tryParse(myGradeController.text);
              if (grade == null) {
                print("${myGradeController.text} is not a number");
                return;
              }

              if (grade >= 90) {
                print("A");
              } else if (grade >= 80) {
                print("B");
              } else if (grade >= 60) {
                print("D");
              } else {
                print("F");
              }
            },
            child: Text("Calculate"),
          )
        ],
      ),
    );
  }
}
