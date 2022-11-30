import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:speech_to_text/extempore.dart';
// import 'package:speech_to_text/speaking.dart';
// import 'extempore.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var items = [
    CardData('Extempore','Get a random topic and speak on it for a small duration of time.',Colors.orange,Colors.red),
    CardData('Read n Speak','Get a random passage and speak it, while we calculate the statistics of how you speak.',Colors.lightBlueAccent,Colors.blueAccent),
    CardData('Write Up','Get a random topic and pen down all you can about the topic.',Colors.lightGreenAccent,Colors.green),
    CardData('Blogging','Anonymously post your compositions open for all the users on this app.',Colors.pinkAccent,Colors.purple),
    CardData('Live Chat Rooms','Get in touch with many other people present online.',Colors.tealAccent,Colors.teal),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wo wala app'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,index){
          return Center(
            child: Padding(padding: const EdgeInsets.all(0),
              child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Extempore()));},
                child: Stack(
                  children: [
                    Container(
                      height: 150,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(24),gradient: LinearGradient(colors: [items[index].startColor,items[index].endColor]),boxShadow: [BoxShadow(color: items[index].endColor,blurRadius: 12,offset: Offset(2,4))],),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: CustomPaint(
                        size: const Size(100,150),
                        painter: CustomCardShapePainter(24,items[index].startColor,items[index].endColor ),
                      ),
                    ),
                    Positioned.fill(
                      child: Row(
                        children: [
                          const Expanded(
                              flex: 1,
                              child: SizedBox(width: 10,)
                          ),
                          Expanded(
                            flex: 10,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(items[index].heading,style: TextStyle(color: Colors.white,fontSize: 25),),
                                SizedBox(height: 4,),
                                Text(items[index].description,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                              ],
                            ),
                          ),
                          // const SizedBox(width: 10,),
                          const Expanded(
                              flex: 1,
                              child: SizedBox(width: 10,)
                          ),
                          Expanded(
                            flex: -1,
                            child: Container(
                              width: 80,height: 80,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(image: AssetImage('assets/img.jpg'),
                                    fit: BoxFit.fill,
                                  )
                              ),
                            ),
                          ),
                          const SizedBox(width: 5,)
                        ],
                      ),
                    ),
                  ],
                ),
              ),),
          );
        },
      ),
    );
  }
}
class CustomCardShapePainter extends CustomPainter{
  late double radius;
  late Color startColor;
  late Color endColor;

  CustomCardShapePainter(this.radius,this.startColor,this.endColor);

  @override
  void paint(Canvas canvas,Size size){
      var radius=24.0;

      var paint=Paint();
      paint.shader = ui.Gradient.linear(
        Offset(0, 0),Offset(size.width,size.height),[
          HSLColor.fromColor(startColor).withLightness(0.8).toColor(),
        endColor
      ]
      );
      var path=Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width - radius, size.height)
      ..quadraticBezierTo(size.width, size.height, size.width, size.height-radius)
      ..lineTo(size.width, radius)
      ..quadraticBezierTo(size.width, 0, size.width-radius, 0)
      ..lineTo(size.width-1.5*radius, 0)
      ..quadraticBezierTo(-radius, 2*radius, 0, size.height)
      ..close();
      
      canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate){
    return true;
  }
}
class CardData{
  late String heading;
  late String description;
  late Color startColor;
  late Color endColor;
  CardData(this.heading,this.description,this.startColor,this.endColor);
}