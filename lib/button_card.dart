
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class buttoncard extends StatelessWidget {
  String name;
  VoidCallback onPressed;
   buttoncard({super.key,required this.name,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;

    return Container(
      height: height*0.040,
      width: width*0.102,

      decoration: BoxDecoration(

        color: Color(0xff068BCA),
        border: Border.all(color: Colors.black54),

      ),
       child:
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            )
          ),
          onPressed: onPressed,child: Text('$name'),
        )
    );

  }
}
