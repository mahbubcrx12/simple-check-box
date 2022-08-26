import 'package:flutter/material.dart';
class StackDemo extends StatefulWidget {
  const StackDemo({Key? key}) : super(key: key);

  @override
  State<StackDemo> createState() => _StackDemoState();
}

class _StackDemoState extends State<StackDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("images/trump.jpg",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
           ),
          Positioned(
            top: 600,
              right: 50,
              child:Column(
                children: [
                  Text("Trump er mon kharap",
                    style: TextStyle(color: Colors.redAccent,fontSize: 24,),),

                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        primary:Colors.teal,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)
                        )
                    ),

                      onPressed: (){},
                      icon: Icon(Icons.cloudy_snowing),
                      label: Text("create Entertainment")),
                  ActionChip(label: Text("Go for Vacation",style: TextStyle(
                    color: Colors.teal,

                  )
                  ), onPressed: (){}

                  )
                ],

              ),

          ),
        ],
      ),


    );
  }
}
