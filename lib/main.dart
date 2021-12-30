import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data/todo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Todo> todos = [
    Todo(
        title: "오늘 할일",
        memo: "앱개발",
        color: Colors.red.value,
        done: 0,
        category: "공부",
        date: 20211231),
    Todo(
        title: "오늘 할일2",
        memo: "앱개발2",
        color: Colors.blue.value,
        done: 0,
        category: "공부",
        date: 20211230),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(),
        preferredSize: const Size.fromHeight(0),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, idx) {
          if (idx == 0) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              child: Text(
                "오늘 하루",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            );
          } else if (idx == 1) {
            return Container(
              child: Column(
                children: List.generate(todos.length, (_idx) {
                  Todo t = todos[_idx];
                  return Container(
                      decoration: BoxDecoration(
                          color: Color(t.color),
                          borderRadius: BorderRadius.circular(16)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  t.title,
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  t.done == 0 ? "미완료" : "완료",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            Container(height: 8),
                            Text(t.memo,
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white))
                          ]));
                }),
              ),
            );
          }
          return Container();
        },
        itemCount: 4,
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.today_outlined), label: "오늘"),
        BottomNavigationBarItem(
            icon: Icon(Icons.assignment_outlined), label: "기록"),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "더보기"),
      ]), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
