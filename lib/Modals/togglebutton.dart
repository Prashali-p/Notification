import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToggleButton extends StatefulWidget {
    bool selected = false;
   ToggleButton({Key? key}) : super(key: key);

  @override
  _ToggleButtonState createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {

  @override
  Widget build(BuildContext context) {
    return  Switch(
      activeTrackColor: Color(0xffE5E5E5),
      activeColor:Color(0xff9E9E9E),
      value: widget.selected,
      onChanged: (bool value) {
        setState(() {
          widget.selected = value;
        });
      },
    );
    
    /*CupertinoSwitch(
        activeColor: Color(0xffE5E5E5),
        trackColor: Color(0xff9E9E9E),
        value: widget.selected , onChanged: (bool value){
        setState(() {
        widget.selected = value;
      });
    });*/
  }
}
