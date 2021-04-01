import 'package:flutter/material.dart';
import 'package:pong_game/pong.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pong Game",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pong Game"),
        ),
        body: SafeArea(
          child: Pong(),
        ),
      ),
    );
  }
}
