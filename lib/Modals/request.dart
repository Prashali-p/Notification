import 'package:flutter/material.dart';
import 'package:notification/Modals/connect.dart';

import '../constant.dart';
import 'package:sizer/sizer.dart';

class Requests extends StatefulWidget {
  const Requests({Key? key}) : super(key: key);

  @override
  _RequestsState createState() => _RequestsState();
}

class _RequestsState extends State<Requests> {
  @override
  Widget build(BuildContext context) {
    List<Request_view> view = [Request_view( '@simba.developers', 'images/simba.png', 'Simba developers')];


    return ListView.builder(

        itemCount: 6,
        itemBuilder:(context,index){
          return Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Container(
                height: 14.h,
                color: Color(0xffFFFFFF),
                child: ListTile(
                  leading: CircleAvatar(radius:25,backgroundColor: Color(0xffFFFFFF),child: Image(image: AssetImage(view[0].image),),),

                  title: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 15,),
                          Text(view[0].text1,style: ktext2,),
                          Text(view[0].text2,style: ktext3,),

                        ],
                      ),
                      Spacer(),
                      ConnectButton(),

                    ],
                  ),
                ),
              ));

        } );
  }
}
class Request_view {
  String image;
  String text1;
  String text2;


  Request_view(this.text2,this.image,this.text1);
}