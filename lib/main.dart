import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:work/CounterProvider.dart';
import 'package:work/button_card.dart';
import 'package:work/custom_dashboard.dart';
import 'package:work/modules/Dashboard/presentation/dashboard.dart';
import 'package:work/modules/Dashboard/provider/dashboard_provider.dart';
import 'package:work/modules/Dashboard/provider/newsfeed_provider.dart';


void main() {
  
 runApp( MultiProvider(
   providers: [
      ChangeNotifierProvider<CounterProvider>(create: (_) => CounterProvider()),
     ChangeNotifierProvider<DashboardProvider>(create: (_) => DashboardProvider()),
     ChangeNotifierProvider<NewsFeed>(create: (_) => NewsFeed()),
      
    ],

    child: MyApp(),
  ));
  

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Dashboard(),
    //  home: CounterApp(),

      );

  }
}


class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<CounterProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(provider.counter.toString()),
        Text(provider.message??''),
        TextButton(onPressed: (){
          provider.incrementCounter(1);
        }, child: Text("Increment")),
        TextButton(onPressed: (){
        
          provider.decrement(1);
        }, child: Text("Decrement")),
      ],
    );
  }
}


