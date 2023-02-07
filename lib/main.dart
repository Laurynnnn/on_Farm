import 'package:flutter/material.dart';
// import 'package:on_farm/Screens/Home/home.dart';

import 'Screens/BottomTabBar/FabsTabs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onfarm',
      theme: ThemeData(
       
        primarySwatch: Colors.purple ,
      ),
      home: FabsTabs(selectedIndex: 0),
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

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
    );
  }
}
