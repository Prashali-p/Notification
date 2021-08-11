import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notification/Modals/Yibe.dart';
import 'package:notification/Modals/request.dart';

import 'package:notification/Modals/togglebutton.dart';
import 'package:notification/constant.dart';
import 'package:sizer/sizer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> name =['All','Social','Yibe','Requests'];
  List<String> listItems =[];
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 4,
      child: Scaffold(

       appBar: AppBar(
         backgroundColor: Color(0xffFFFFFF),
         elevation: 0,
         toolbarHeight: 17.h,
         leading:Icon(Icons.arrow_back,color: Color(0xff212121),size: 30,),

         actions: [Column(
           children: [
             SizedBox(height:25 ,),
             ToggleButton(),
             Text('Private',style: TextStyle(fontSize: 5,color: Color(0xff000000)),)
           ],
         )],

         bottom: TabBar(indicatorColor:  Color(0xff202020),tabs: [Text(name[0],style: ktext1,),Text(name[1],style: ktext1),Text(name[2],style: ktext1),Text(name[3],style: ktext1)],),
      ),

        body: TabBarView(
          children: [
            Text('Data '),
            Text('Data '),
            Yibe(),
            Requests(),


          ],),
      ),
    );
  }
}
