import 'package:flutter/material.dart';

class secound extends StatefulWidget {
  String name;
  List<String> image = [];
  secound(this.name,this.image);
  @override
  State<secound> createState() => _secoundState();
}

class _secoundState extends State<secound> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${widget.name}"),),
    );
  }
}
