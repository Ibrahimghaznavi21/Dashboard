import 'package:flutter/material.dart';

class CustomReportTitle extends StatelessWidget {
  String titleName;
  CustomReportTitle({super.key, required this.titleName});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.cake),
          SizedBox(
            width: width * 0.010,
          ),
          Text(titleName),
        ],
      ),
    );
  }
}
