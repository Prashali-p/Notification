import 'package:flutter/material.dart';
class ConnectButton extends StatefulWidget {
  const ConnectButton({Key? key}) : super(key: key);

  @override
  _ConnectButtonState createState() => _ConnectButtonState();
}

class _ConnectButtonState extends State<ConnectButton> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 25,
          width: 90,

          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(color: selected?Color(0xff202020):Color(0xff43923A))),
          child: GestureDetector(onTap:(){
            setState(() {
              selected=!selected;
            });
          },child: Center(child: Row(
            children: [
              SizedBox(width: 15,),
              Text(selected?'Connected':'Connect',style: TextStyle(fontSize:10,color: selected?Color(0xff202020):Color(0xff43923A)),),
              Icon(selected? Icons.arrow_drop_down:null)
            ],
          ))),

        ),SizedBox(width: 10,),
        Icon(selected?null:Icons.close,size: 15,color: Color(0xff202020),)

      ],
    );
  }
}
