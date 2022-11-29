import 'package:flutter/material.dart';
import 'package:speeech_to_text/home.dart';

class Extempore extends StatefulWidget {
  const Extempore({Key? key}) : super(key: key);

  @override
  State<Extempore> createState() => _ExtemporeState();
}

class _ExtemporeState extends State<Extempore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Topic Name'),
      ),
      body: Container(
        child: Column(
          children: [
            Text('Jo tu bhowkega wo ihar chapega'),
          ],
        ),
      ),
    );
  }
}
