import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:work/modules/Dashboard/provider/newsfeed_provider.dart';

import 'custom_report_title.dart';

class NewFeeds extends StatefulWidget {
  const NewFeeds({super.key});

  @override
  State<NewFeeds> createState() => _NewFeedsState();
}

class _NewFeedsState extends State<NewFeeds> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    var newsFeedProvider=Provider.of<NewsFeed>(context);
    return Column(
      children: [
        Text('News Feed'),
        SizedBox(
          height: height * 0.02,
        ),
        Expanded(
          child: Container(
            height: height*0.172,
            width:275 ,
            decoration: contianerDeco(),
            child: Column(
              mainAxisAlignment:
              MainAxisAlignment.start,
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                CustomReportTitle(titleName: "Upcomming Birthdays",),

                SizedBox(
                  width: width * 0.010,
                ),
                Divider(color: Colors.black,thickness: 2,),
                ListView.builder(
                    itemCount:newsFeedProvider.newsFeedIntegerValue.length ,
                    shrinkWrap:true,
                    itemBuilder: (_,index)
                    {
                      
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('${newsFeedProvider.newsFeedIntegerValue[index]}', style: GoogleFonts.inter(color: Color(0xffF18800),),),
                                Text('${newsFeedProvider.newsFeedMonthValue[index]}',style: GoogleFonts.inter(color: Color(0xffF18800))),
                              ],


                            ),
                            Divider(color: Colors.black,thickness: 4,),
                            Padding(
                              padding: const EdgeInsets.all(10.0),

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text('${newsFeedProvider.newsFeedNameValue[index]}',style: GoogleFonts.inter(color: Color(0xff068BCA)),),
                                  Text('${newsFeedProvider.newsFeedDepartmentValue[index]}')
                                ],),),],) ,);}),
                SizedBox(
                    width: 25
                ),
              ],),),),
        SizedBox(
          height: height * 0.02,
        ),
        Expanded(
          child: Container(
            height: height*0.172,
            width:275 ,
            decoration: contianerDeco(),

            child: Column(
              mainAxisAlignment:
              MainAxisAlignment.start,
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                CustomReportTitle(titleName: "Upcomming work anniversory",),
                Divider(),
                SizedBox(
                  width: width * 0.010,
                ),
                Container(
                  //constraints: BoxConstraints(minHeight: 100,maxHeight: 400,maxWidth: 300,minWidth: 180),
                  child: ListView.builder(
                      itemCount: 2,
                      shrinkWrap:true,
                      itemBuilder: (_,index){
                       return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('${newsFeedProvider.newsFeedIntegerValue[index]}', style: GoogleFonts.inter(color: Color(0xffF18800),),),
                                  Text('${newsFeedProvider.newsFeedMonthValue[index]}',style: GoogleFonts.inter(color: Color(0xffF18800))),
                                ],


                              ),
                              Divider(color: Colors.black,thickness: 4,),
                              Padding(
                                padding: const EdgeInsets.all(10.0),

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text('${newsFeedProvider.newsFeedNameValue[index]}',style: GoogleFonts.inter(color: Color(0xff068BCA)),),
                                    Text('${newsFeedProvider.newsFeedDepartmentValue[index]}')
                                  ],),),],) ,);

                      }),
                ),

                /*SizedBox(
                                                width: width * 0.010,
                                              ),*/
              ],
            ),
          ),
        ),
      ],
    );
  }
}


Decoration contianerDeco(){
  return BoxDecoration(
    border: Border.all(color: Colors.black),
    color: Colors.white,
  );
}