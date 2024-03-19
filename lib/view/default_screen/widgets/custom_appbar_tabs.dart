import 'package:flutter/material.dart';
import 'package:play_store/dummy_db.dart';

class CustomAppbarTabs extends StatefulWidget {
  const CustomAppbarTabs({
    super.key,
    required this.currentPage,
    required this.onBuildTabs,
    //  required this.tabController
  });

  final String currentPage;
  final Function(List<dynamic>? categoryTabs) onBuildTabs;
  // final TabController tabController;

  @override
  State<CustomAppbarTabs> createState() => _CustomAppbarTabsState();
}

class _CustomAppbarTabsState extends State<CustomAppbarTabs> {
  @override
  Widget build(BuildContext context) {
    // print("Current Page: ${widget.currentPage}");

    List<dynamic>? categoryTabs = DummyDb.categories[widget.currentPage];
    widget.onBuildTabs(categoryTabs);

    if (categoryTabs == null) {
      return const SizedBox();
    }

    return DefaultTabController(
      length: categoryTabs.length,
      child: TabBar(
        // controller: widget.tabController,
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        tabs: List.generate(
          categoryTabs.length,
          (index) => Tab(
            text: categoryTabs[index],
          ),
        ),
      ),
    );
  }
}
