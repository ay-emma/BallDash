import 'package:flutter/material.dart';
import 'package:goals_dash/Src/style.dart';
import 'package:goals_dash/Src/today.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints ){
        //Desktop
        if(constraints.maxWidth>1200){
          return DesktopNavBar();
        }
        //Tablets
        else if (constraints.maxWidth> 800 && constraints.maxWidth<1200){
          return DesktopNavBar();
        }
        // else if (contraints.maxWideth> 800 && contraints.maxWidth<1200){
        //   DesktopNavBar();
        // }
        //Mobile phone
        else{
          return MobileNavBar();
        }

      },
    );
  }
}

class DesktopNavBar extends StatefulWidget {
  @override
  _DesktopNavBarState createState() => _DesktopNavBarState();
}

class _DesktopNavBarState extends State<DesktopNavBar> {
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
                body: TabBarView(
                  children: [
                    Icon(Icons.access_alarm),
                    Today(),
                    Icon(Icons.cached),
                ],),
          ),
        ),
        );

    
  }
}


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const CustomAppBar({Key key, this.height}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
              child: Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Image.asset("images/football.png",
                  width: 50,
                  height: 50,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("BallDash", style: header2, ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.45,
              color: tabSec,
              child: Row(
                children: [
                  Expanded(
                    child:  TabBar(
                      indicatorColor: bluewe,
                      labelColor: bluewe,
                      unselectedLabelColor: whitee,
                      labelPadding: EdgeInsets.symmetric( horizontal: 7  ),
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
                      child: Text("Tommorrow",
                      style: tabs, 
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                       ),
                    ),
                  ),
                  Tab(
                    child: Center(
                      child: Text("Today", style: tabs,),
                    ),
                  ),
                  Tab(
                    child: Center(
                      child: Text("Yestarday",
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

    
  }

  @override
    Size get preferredSize => Size.fromHeight(height);
}


class MobileNavBar extends StatefulWidget {
  @override
  _MobileNavBarState createState() => _MobileNavBarState();
}

class _MobileNavBarState extends State<MobileNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}