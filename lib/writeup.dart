import 'package:flutter/material.dart';
class Writeup extends StatefulWidget {
  const Writeup({Key? key}) : super(key: key);

  @override
  State<Writeup> createState() => _WriteupState();
}

class _WriteupState extends State<Writeup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Topic ka naam'),
      ),
      body: Text('Ye topic lo, aur bako'),
    );
  }
}
