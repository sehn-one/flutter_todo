import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(),
        preferredSize: const Size.fromHeight(0),
      ),
      body: Column(
        children: const [],
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
