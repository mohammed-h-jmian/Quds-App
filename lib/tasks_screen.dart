import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({String? title, String? value});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[400],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 35, 116, 107),
        centerTitle: true,
        title: const Text(
          'عاصمة فلسطين',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 20,
        ),
        child: Column(children: [
          Image.asset("images/quds.jpg"),
          const Text(
            "مدينة القدس",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: ListView(
                children: [
                  printWidget(title: "الاسم", value: "القدس "),
                  printWidget(title: "المساحة", value: "125 كم"),
                  printWidget(title: "السكان", value: "358000 نسمة"),
                  printWidget(title: "الدولة", value: "فلسطين"),
                  printWidget(title: "اسم الطالب", value: "محمد حسن جميعان"),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }

  Widget printWidget({String? title, String? value}) {
    return Container(
      height: 60,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(144, 38, 166, 153),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white),
            child: Text(
              "$value",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, color: Colors.teal[400]),
            ),
          ),
          Container(
            height: 50,
            width: 120,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white),
            child: Text(
              "$title",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, color: Colors.teal[400]),
            ),
          ),
        ],
      ),
    );
  }
}
