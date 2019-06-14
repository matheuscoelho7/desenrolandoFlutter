import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          color: Colors.white,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                  width: 50,
                  height: 50,
                  child: ButtonIcon(),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  height: 50,
                  child: ButtonText(),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  height: 50,
                  child: ButtonTextIcon(),
                ),
              ),

             SizedBox(height: 30,),

             Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                Container(width: 50, height: 50, color: Colors.cyan,),
                SizedBox(width: 50,),
                Container(width: 50, height: 50, color: Colors.indigo,),
                SizedBox(width: 50,),
                Container(width: 50, height: 50, color: Colors.pink,),
             ],)
            ],
          ),
        ),
      )
    );
  }
}


class ButtonIcon extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(100.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(1.0, 4.0),
              blurRadius: 8
            ),
          ]
        ),
      width: 150,
      height: 50,
      child: Icon(Icons.add, color: Colors.white,)
    );
  }
}

class ButtonText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(100.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(1.0, 4.0),
              blurRadius: 8
            ),
          ]
        ),
        // TRABALHANDO COM ANIMAÇÕES = transform: Matrix4.identity()..scale(1.0)..translate(0.0, 0.0),
        width: 50,
        height: 50,
        alignment: Alignment.center,
        child: Text("A", style: TextStyle(color: Colors.white, fontSize: 25),
        

        ),
      ),
    );
  }
}

class ButtonTextIcon extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(100.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(1.0, 4.0),
              blurRadius: 8
            ),
          ]
        ),
      width: 150,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(child: Icon(Icons.whatshot, color: Colors.white,)),
          Expanded(
            child: Text("Subtrair", 
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.white, fontSize: 18),),
          )
          
          
        ],
      ),
    );
  }
}
