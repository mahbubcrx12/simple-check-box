import 'package:flutter/material.dart';
class CustomButton extends StatefulWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child:GestureDetector(
          onTap: (){
            print("clicked");
          },
          child: Container(
            height: 50,
            width: 150,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
                color: Colors.green,
              boxShadow :[
                BoxShadow(offset: Offset(0, 5),
                blurRadius: 20
                ),
            ],
            ),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(40)
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  child: Text("click"),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.ads_click)
              ]),
          ),
        ),
      ),

    );
  }
}
