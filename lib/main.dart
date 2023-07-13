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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var arrList = [22,33,32,44 ,55, 66, 88, 100, 120, 121];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:Center(
        child: ListWheelScrollView(
          itemExtent: 200,
          children: arrList.map((value) => Container(child: Text("$value", style: TextStyle(color: Colors.white, fontSize: 21),), width: double.infinity, color: Colors.deepPurpleAccent, ),).toList(),
        ),
      ),


      // body: Center(
      //   child: ListWheelScrollView(
      //     itemExtent: 200,
      //     children: [
      //       Container(width: double.infinity, color: Colors.deepPurpleAccent,),
      //       Container(width: double.infinity, color: Colors.deepPurpleAccent,),
      //       Container(width: double.infinity, color: Colors.deepPurpleAccent,),
      //       Container(width: double.infinity, color: Colors.deepPurpleAccent,),
      //       Container(width: double.infinity, color: Colors.deepPurpleAccent,),
      //       Container(width: double.infinity, color: Colors.deepPurpleAccent,),
      //     ],
      //   ),
      // )
    );
  }
}
