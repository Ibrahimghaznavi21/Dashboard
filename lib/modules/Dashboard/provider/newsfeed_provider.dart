import 'package:flutter/cupertino.dart';

class NewsFeed with ChangeNotifier{


List _newsFeedIntegerValue=[15,23];
List _newsFeedNameValue=['Ali','Hamza'];
List _newsFeedDepartmentValue=['HR & Recuritment','IT Department'];
List _newsFeedMonthValue=['ARP','APR'];

List get newsFeedIntegerValue=> _newsFeedIntegerValue;
List get newsFeedNameValue=>_newsFeedNameValue;
List get newsFeedDepartmentValue=>_newsFeedDepartmentValue;
List get newsFeedMonthValue=>_newsFeedMonthValue;


}