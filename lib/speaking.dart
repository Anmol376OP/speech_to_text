import 'package:flutter/material.dart';
class Speaking extends StatefulWidget {
  const Speaking({Key? key}) : super(key: key);

  @override
  State<Speaking> createState() => _SpeakingState();
}

class _SpeakingState extends State<Speaking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Topic Name'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Ye pehle se likha hua text'),
          Text('---------------------------'),
          Text('Ye wo jo tu baka')
          
        ],
      ),
    );
  }
}
