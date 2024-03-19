import 'package:flutter/material.dart';
import 'package:play_store/core/constants/color_constants.dart';
import 'package:play_store/dummy_db.dart';
import 'package:play_store/view/default_screen/widgets/custom_appbar_tabs.dart';
import 'package:play_store/view/default_screen/widgets/custom_appbar_title.dart';

class DefaultScreen extends StatefulWidget {
  const DefaultScreen({super.key});

  @override
  State<DefaultScreen> createState() => _DefaultScreenState();
}

class _DefaultScreenState extends State<DefaultScreen> {
  int currentPageIndex = 0;
  String currentPage = "Games";
  late TabController controller;

  // void initStat(){
  //   super.initState();
  //   controller = TabController(length: DummyDb.categories[currentPage], vsync: this);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //1. Body
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                snap: false,
                surfaceTintColor: Colors.white,
                title: const CustomAppbarTitle(),
                bottom: currentPageIndex != 2
                    ? PreferredSize(
                        preferredSize: const Size.fromHeight(48),
                        child: CustomAppbarTabs(
                          onBuildTabs: (categoryTabs) {
                            setState(() {});
                          },
                          currentPage: currentPage,
                        ),
                      )
                    : null,
              ),
            ];
          },
          body: Container(
            color: Colors.red,
          )),

      //       // SliverList(
      //       //   delegate: SliverChildBuilderDelegate(
      //       //     (BuildContext context, int index) {
      //       //       return Container(
      //       //         color: index.isOdd ? Colors.white : Colors.black12,
      //       //         height: 100.0,
      //       //         child: Center(
      //       //           child: Text('$index',
      //       //               textScaler: const TextScaler.linear(5)),
      //       //         ),
      //       //       );
      //       //     },
      //       //     childCount: 20,
      //       //   ),
      //       // ),
      //     ],
      //   ),
      // ),

      //2. BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(

          //1. Styling
          type: BottomNavigationBarType.fixed,
          iconSize: 26,
          selectedItemColor: ColorConstants.primaryBlack,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),

          //2. Functional
          currentIndex: currentPageIndex,
          onTap: (value) {
            currentPageIndex = value;
            currentPage = DummyDb.bottomNavigationBarItems[value]["iconName"];
            setState(() {});
          },

          //3. Bottom Navigation-Bar items
          items: List.generate(
            DummyDb.bottomNavigationBarItems.length,
            (index) => BottomNavigationBarItem(
              icon: Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                  ),
                  decoration: BoxDecoration(
                    color: currentPageIndex == index
                        ? ColorConstants.primaryShadeOfBlue
                        : null,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: currentPageIndex == index
                      ? Icon(DummyDb.bottomNavigationBarItems[index]
                          ["defaultIcon"])
                      : Icon(DummyDb.bottomNavigationBarItems[index]
                          ["activeIcon"])),
              label: DummyDb.bottomNavigationBarItems[index]["iconName"],
            ),
          )),
    );
  }
}
