import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ButtonIcon extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(100.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(1.0, 4.0),
                blurRadius: 8
              ),
            ]
          ),
        width: 50,
        height: 50,
        child: Icon(Icons.add, color: Colors.white,)
      ),
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

class SizedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 10,);
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
          Expanded(
            child: Icon(Icons.whatshot, color: Colors.white,)
          ),
          Expanded(
            child: Text("Sunshine", 
                style: TextStyle(color: Colors.white, fontSize: 14),),
          )
        ],
      ),
    );
  }
}