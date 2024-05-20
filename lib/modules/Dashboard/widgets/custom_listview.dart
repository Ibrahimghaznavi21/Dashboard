
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomListView extends StatelessWidget {
  Widget child;
  var list;
   CustomListView({super.key,required this.child,required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount:list.length,
        shrinkWrap:true,
        itemBuilder: (_,index){
            var newsFeedProvider;
            return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(

              children: [
                Divider(color: Colors.black,thickness: 4,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${newsFeedProvider.newsFeedIntegerValue[index]}', style: GoogleFonts.inter(color: Color(0xffF18800),),),
                    Text('${newsFeedProvider.newsFeedMonthValue[index]}',style: GoogleFonts.inter(color: Color(0xffF18800))),
                  ],


                ),
                //   Divider(color: Colors.black,thickness: 4,),
                Padding(
                  padding: const EdgeInsets.all(10.0),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text('${newsFeedProvider.newsFeedNameValue[index]}',style: GoogleFonts.inter(color: Color(0xff068BCA)),),
                      Text('${newsFeedProvider.newsFeedDepartmentValue[index]}')
                    ],),),],) ,);}
    );
  }
}
