import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.indigo,
        ),
        body: Ask(),
      )
    ),
  );
}

class Ask extends StatefulWidget {
  @override
  _AskState createState() => _AskState();
}

class _AskState extends State<Ask> {
  int x = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0,40.0,10.0,40.0),
                  child: Image.asset('images/ball$x.png'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: TextButton(
                    onPressed: (){
                      setState(() {
                        x = Random().nextInt(5)+1;
                      });
                    },
                    child: Text(
                        'Tap HERE to get your ANSWER',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic,
                          color: Colors.indigo,
                          fontSize: 20.0,
                        ),
                    ),
                  ),
                ),
                color: Colors.white,
              )
            ],
          )
        ],
      )
    );
  }
}
