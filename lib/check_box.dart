import 'dart:ffi';

import 'package:flutter/material.dart';
class CheckBoxDemo extends StatefulWidget {
  const CheckBoxDemo({Key? key}) : super(key: key);

  @override
  State<CheckBoxDemo> createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool fierstValue=false;
  bool secondValue=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Container(
          child: Column(
            children: [
              // Checkbox(
              //     value: fierstValue,
              //     onChanged: (value){
              //       setState((){
              //         fierstValue=value!;
              //       });
              //     }),
              CheckboxListTile(
                title: Text("will you accept the conditions?"),
                  subtitle: Text("if yes,tick on the box",style: TextStyle(
                    color: Colors.green
                  ),),
                  tileColor: Colors.white70,
                  value: secondValue,
                  onChanged: (value){
                    setState((){
                      secondValue=value!;
                      print("Conditions accepted");
                    });
                  })


            ],

          ),
        ),

      ),
    );
  }
}
