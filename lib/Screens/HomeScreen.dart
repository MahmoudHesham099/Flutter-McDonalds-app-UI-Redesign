import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mcdonaldsapp/Data/Data.dart';
import 'package:mcdonaldsapp/Widgets/ItemContainer.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _segmentedValue = 0;
  Map<int, Widget> _tabs = <int, Widget>{
    0: Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Text(
        'All Products',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
    1: Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Text(
        'For delivery',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  };
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey[100],
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          title: Text(
            'MENU',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xffffcc00),
            ),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(
                Icons.shopping_basket,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: CupertinoSlidingSegmentedControl(
                groupValue: _segmentedValue,
                thumbColor: Color(0xffffcc00),
                children: _tabs,
                onValueChanged: (i) {
                  setState(() {
                    _segmentedValue = i;
                  });
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            DefaultTabController(
              length: 5,
              child: TabBar(
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Color(0xfff03536),
                unselectedLabelColor: Color(0xff5f6368),
                isScrollable: true,
                indicator: MD2Indicator(
                  indicatorHeight: 3,
                  indicatorColor: Color(0xfff03536),
                  indicatorSize: MD2IndicatorSize.full,
                ),
                tabs: <Widget>[
                  Tab(
                    text: 'Burgers',
                  ),
                  Tab(
                    text: "Beverages",
                  ),
                  Tab(
                    text: "Combo Meal",
                  ),
                  Tab(
                    text: "Salads",
                  ),
                  Tab(
                    text: "Breakfast",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: ScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 2 / 3,
                ),
                itemCount: menu.length,
                itemBuilder: (_, index) {
                  return ItemContainer(
                    item: menu[index],
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
