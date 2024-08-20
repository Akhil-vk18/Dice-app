import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight:130,
          title: Center(
            child: Text(
              'Dice',
              style: TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.bold,
                fontSize: 80,
                fontFamily: 'Pacifico',),
            ),


          ),
          backgroundColor: Colors.greenAccent.shade400,
        ),

        backgroundColor: Colors.greenAccent.shade400,
        body: dice(),

      ),

    ),
  );
}

//class dice extends StatelessWidget {
//  dice({super.key});
class dice extends StatefulWidget {
  const dice({super.key});

  @override
  State<dice> createState() => _diceState();
}

class _diceState extends State<dice> {
  var dicevalue = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(
            height: 200,
            width: 200,
            child: TextButton(
                onPressed: () {
                  setState(() {
                    dicevalue =
                        Random().nextInt(6) + 1; // Value is >= 0 and < 7.
                    print('You got $dicevalue ');
                  });
                },
                child: Image(
                  image: AssetImage('images/dice$dicevalue.png'),
                )),
          ),
          SizedBox(height:30),
          Divider(height: 10,indent: 30,endIndent: 30,color: Colors.black),
          Text(
            'You got  $dicevalue',
            style: TextStyle(
              color: Colors.redAccent,
              fontSize: 40,
              fontWeight: FontWeight.bold,fontFamily: 'Pacifico'
            ),
          ),
        ],
      ),
    );
  }
}
