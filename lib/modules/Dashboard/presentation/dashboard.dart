import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:work/modules/Dashboard/widgets/news_feed.dart';
import 'package:work/modules/Graphs/presentation/benifits_graph.dart';
import 'package:work/modules/Graphs/presentation/company_graph.dart';
import 'package:work/modules/Graphs/presentation/salary_graph.dart';
import 'package:work/modules/Dashboard/provider/newsfeed_provider.dart';
import 'package:work/style/color_constants.dart';
import 'package:work/style/customize_color.dart';

import '../../../button_card.dart';
import '../../../custom_dashboard.dart';
import '../../../style/text_styles.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<String> tabs = [
    "Company",
    "Location",
    "Department",
    "Position",
    "Grade",
    "Gender",
    "Age"
  ];
  int hoverIndex = -1;
  int selectedIndex = 0;

  selectedIndexfun(index) {
    selectedIndex = index;
    setState(() {});
  }

  hoverColorChangefun(index) {
    hoverIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var newsFeedProvider = Provider.of<NewsFeed>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          backgroundColor: Color(0xff045588),
        ),
        body: Expanded(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: height * 0.041,
                    width: width * 0.1,
                    color: Color(0xffFFFFFF),
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Text(
                        'DashBoard',
                        style: AppTextStyle().headerText,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      width: width * 0.01,
                    ),
                    customDashboard(
                        name: 'Total Employees',
                        statistics: 215,
                        iconData: Icons.do_not_disturb_on_total_silence),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    customDashboard(
                        name: 'Pending Approval',
                        statistics: 15,
                        iconData: Icons.pending_sharp),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    customDashboard(
                        name: 'New Hires',
                        statistics: 18,
                        iconData: Icons.people_outline_sharp),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    customDashboard(
                        name: 'Resign',
                        statistics: 14,
                        iconData: Icons.not_interested_outlined),
                    SizedBox(
                      width: width * 0.01,
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              height: 1119,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      for (int i = 0; i < tabs.length; i++)
                                        MouseRegion(
                                          onEnter: (v) {
                                            hoverColorChangefun(i);
                                          },
                                          onExit: (v) {
                                            hoverColorChangefun(-1);
                                          },
                                          child: Container(
                                              color: selectedIndex == i
                                                  ? Colors.amberAccent
                                                  : hoverIndex == i
                                                      ? Colors.red
                                                      : Colors.blue,
                                              child: buttoncard(
                                                name: tabs[i],
                                                onPressed: () {
                                                  selectedIndexfun(i);
                                                },
                                              )),
                                        ),
                                    ],
                                  ),
                                  selectedIndex == 0
                                      ? Expanded(
                                          child: SingleChildScrollView(
                                            child: Container(
                                              width: width * 0.719,
                                              height: height * 0.7,
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                        height: 180,
                                                        child: CompanyGraph()),
                                                    SizedBox(
                                                        height: height * 0.02),
                                                    SizedBox(
                                                        height: 180,
                                                        child: Salarygraph()),
                                                    SizedBox(
                                                        height: height * 0.02),
                                                    SizedBox(
                                                        height: 180,
                                                        child: Benefitgraph()),
                                                    SizedBox(
                                                        height: height * 0.02),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ): Image(
                                      image: AssetImage(
                                          'assets/image/map.jpg')),

                                ],
                              ),
                            ),
                          ]),
                      SizedBox(
                        width: width * 0.254,
                        height: height * 0.740,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                height: 600,
                                width: width * 0.254,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0),
                                    color: Colors.white),
                                child: Expanded(child: NewFeeds()),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                //SizedBox(height: CustomSizer.getHorizontalSize(context, 10)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
