import 'package:flutter/material.dart';
import 'package:play_store/core/constants/color_constants.dart';

class DefaultScreen extends StatefulWidget {
  const DefaultScreen({super.key});

  @override
  State<DefaultScreen> createState() => _DefaultScreenState();
}

class _DefaultScreenState extends State<DefaultScreen> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //1. Body
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Container(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: const Row(
                children: <Widget>[
                  Expanded(
                      child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.search_rounded,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Search apps & games"),
                      Spacer(),
                      Icon(Icons.mic_none),
                    ],
                  )),
                  Icon(Icons.notifications_none_outlined),
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    radius: 14,
                  )
                ],
              ),
            ),
          )
        ],
      ),
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
          setState(() {});
        },

        //3. Navigation-Bar items
        items: <BottomNavigationBarItem>[
          //3.1. Games
          BottomNavigationBarItem(
            icon: Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                ),
                decoration: BoxDecoration(
                  color: currentPageIndex == 0
                      ? ColorConstants.primaryShadeOfPink
                      : null,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: currentPageIndex == 0
                    ? const Icon(Icons.sports_esports)
                    : const Icon(Icons.sports_esports_outlined)),
            label: "Games",
          ),

          //3.2. Apps
          BottomNavigationBarItem(
            icon: Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                ),
                decoration: BoxDecoration(
                  color: currentPageIndex == 1
                      ? ColorConstants.primaryShadeOfPink
                      : null,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: currentPageIndex == 1
                    ? const Icon(Icons.grid_view_rounded)
                    : const Icon(Icons.grid_view)),
            label: "Apps",
          ),

          //3.3. Offers
          BottomNavigationBarItem(
            icon: Transform.flip(
              flipX: true,
              child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                  ),
                  decoration: BoxDecoration(
                    color: currentPageIndex == 2
                        ? ColorConstants.primaryShadeOfPink
                        : null,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: currentPageIndex == 2
                      ? const Icon(Icons.sell_rounded)
                      : const Icon(Icons.sell_outlined)),
            ),
            label: "Offers",
          ),

          //3.4 Books
          BottomNavigationBarItem(
            icon: Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                ),
                decoration: BoxDecoration(
                  color: currentPageIndex == 3
                      ? ColorConstants.primaryShadeOfPink
                      : null,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: currentPageIndex == 3
                    ? const Icon(Icons.book)
                    : const Icon(Icons.book_outlined)),
            label: "Books",
          ),
        ],
      ),
    );
  }
}
