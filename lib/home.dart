import 'package:flutter/material.dart';
import 'package:speeech_to_text/speaking.dart';
import 'extempore.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User ka naam, pata, L size etc'),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 70,width: 250,child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const Extempore()));},child: Text('Extempore'),style: TextButton.styleFrom(foregroundColor: Colors.white,backgroundColor: Colors.blue),),),
            SizedBox(height: 8,),
            SizedBox(height: 70,width: 250,child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const Speaking()));},child: Text('Dekh ke hi bol le'),style: TextButton.styleFrom(foregroundColor: Colors.white,backgroundColor: Colors.blue),),),
            SizedBox(height: 8,),
            SizedBox(height: 70,width: 250,child: TextButton(onPressed: (){},child: Text('Essay likh lo fraands'),style: TextButton.styleFrom(foregroundColor: Colors.white,backgroundColor: Colors.blue),),),
            SizedBox(height: 8,),
            SizedBox(height: 70,width: 250,child: TextButton(onPressed: (){},child: Text('Reddit + Twitter + Anonymous'),style: TextButton.styleFrom(foregroundColor: Colors.white,backgroundColor: Colors.blue),),),
            SizedBox(height: 8,),
            SizedBox(height: 70,width: 250,child: TextButton(onPressed: (){},child: Text('Omegle wali bc'),style: TextButton.styleFrom(foregroundColor: Colors.white,backgroundColor: Colors.blue),),),
            ],
        ),
      ),
    );
  }
}