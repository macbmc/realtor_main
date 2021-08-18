import 'package:flutter/material.dart';
class Chater extends StatefulWidget {
  const Chater({Key? key}) : super(key: key);

  @override
  _ChaterState createState() => _ChaterState();
}

class _ChaterState extends State<Chater> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Text("Chat Page"),
        )
    );
  }
}
