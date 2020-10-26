import 'package:flutter/material.dart';
import 'package:goals_dash/Src/style.dart';
import 'package:goals_dash/Src/today.dart';
import 'package:goals_dash/Src/todayMobil.dart';

import '../adminPortal.dart';
import '../tomorrowMobil.dart';
import '../yestardayMobile.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Container(
        child: Scaffold(
            appBar: CustomAppBar(
              height: 110,
            ),
            body: LayoutBuilder(builder: (context, constin) {
              if (constin.maxWidth >= 480) {
                return TabBarView(children: [
                  Icon(Icons.account_box, size: 60),
                  Today(),
                  TomorrowMobile()
                ]);
              } else {
                print("phone mode");
                return TabBarView(children: [
                  YerstadayMobile(),
                  TodayMobile(),
                  TomorrowMobile()
                ]);
              }
            })),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const CustomAppBar({Key key, this.height}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrints) {
        // Calculates the constraints of the app bar width
        double appbarWidth(BoxConstraints constraints) {
          if (constraints.maxWidth > 1200) {
            print("its a desktop mode");
            return 0.45;
          } else if (constraints.maxWidth > 768 &&
              constraints.maxWidth < 1200) {
            print("its a tablet mode");
            return 0.5;
          } else if (constraints.maxWidth > 495 && constraints.maxWidth < 768) {
            print("it's close to moblie mode tablet");
            return 0.68;
          } else if (constraints.maxWidth > 319 && constraints.maxWidth < 440) {
            print("it's moblie mode ");
            return 0.96;
          }

          return 0.46;
        }

        return Material(
          elevation: 9,
          child: Container(
            color: bodybg,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 62,
                  color: bodybg,
                  child: InkWell(
                    onDoubleTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AdminPortal()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FadeInImage.assetNetwork(
                          placeholder: "images/football.png",
                          image:
                              "https://firebasestorage.googleapis.com/v0/b/scoreline-61b57.appspot.com/o/images%2Ficons8-football-kick-100%20(1).png?alt=media&token=556409d9-dc4e-4db2-824d-ce99bb0118ec",
                          height: 25,
                          width: 25,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Scoreline",
                          style: header2,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width *
                      appbarWidth(constrints),
                  color: tabSec,
                  child: Row(
                    children: [
                      Expanded(
                        child: TabBar(
                          indicatorColor: bluewe,
                          labelColor: bluewe,
                          unselectedLabelColor: whitee,
                          labelPadding: EdgeInsets.symmetric(horizontal: 7),
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              topLeft: Radius.circular(5),
                            ),
                            color: tabPri,
                          ),
                          indicatorSize: TabBarIndicatorSize.tab,
                          tabs: [
                            Tab(
                              child: Center(
                                child: Text(
                                  "Yestarday",
                                  style: tabs,
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            Tab(
                              child: Center(
                                child: Text(
                                  "Today",
                                  style: tabs,
                                ),
                              ),
                            ),
                            Tab(
                              child: Center(
                                child: Text(
                                  "Tomorrow",
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis,
                                  style: tabs,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
