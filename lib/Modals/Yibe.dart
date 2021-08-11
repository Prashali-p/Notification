import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:notification/constant.dart';
import 'package:sizer/sizer.dart';

class Yibe extends StatefulWidget {
  const Yibe({Key? key}) : super(key: key);

  @override
  _YibeState createState() => _YibeState();
}

class _YibeState extends State<Yibe> {
  List<YibeView> view =[
    YibeView('images/karoke.png','Kareoke Night', 'Starting in 30mins','1h ago'),
    YibeView('images/karoke.png','Tomorrow at 7pm', '1d ago','1h ago'),
    YibeView('images/karoke.png','Kareoke Night', 'Starting in 30mins','1h ago'),
    YibeView('images/karoke.png','Tomorrow at 7pm', '1d ago','1h ago'),
    YibeView('images/karoke.png','Kareoke Night', 'Starting in 30mins','1h ago'),
    YibeView('images/karoke.png','Kareoke Night', 'Starting in 30mins','1h ago'),
    YibeView('images/karoke.png','Kareoke Night', 'Starting in 30mins','1h ago'),
    YibeView('images/karoke.png','Kareoke Night', 'Starting in 30mins','1h ago'),];



  @override
  Widget build(BuildContext context) {
    return ListView.builder(

        itemCount: 8,
        itemBuilder:(context,index){
          return Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Container(
                height: 14.h,
                color: Color(0xffFFFFFF),
                child: ListTile(
                  leading: CircleAvatar(radius:25,backgroundColor: Color(0xffFFFFFF),child: Image(image: AssetImage(view[index].image),),),

                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5,),
                      Text(view[index].text1,style: ktext2,),
                      Text(view[index].text2,style: ktext3,),
                      Text(view[index].text3,style: ktext3)
                    ],
                  ),
                ),
              ));

        } );
  }
}
class YibeView {
  String image;
  String text1;
  String text2;
  String text3;

 YibeView(this.image,this.text1,this.text2,this.text3);
}
