import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:work/style/customize_color.dart';

class customDashboard extends StatelessWidget {
  String name;
  int statistics;
  IconData iconData;

  customDashboard(
      {super.key,
      required this.name,
      required this.statistics,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Expanded(
      child: Card(
        elevation: 6,
        child: Container(
          height:height*0.155 ,
          width: 0.209,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
           
            color: Color(0xffFFFFFF),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16,left:16),
                    child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                    FittedBox(child: Text(name, style: GoogleFonts.nunitoSans(),)),

                    FittedBox(
                      child: Text(statistics.toString(),
                          style: GoogleFonts.nunitoSans(fontWeight:FontWeight.bold ,color: Color(0xff202224))),
                    ),
                                ],
                              ),
                  )),

              Padding(
                padding: const EdgeInsets.only(left: 16,top: 16,right: 16),
                child: FittedBox(child: Icon(iconData)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
