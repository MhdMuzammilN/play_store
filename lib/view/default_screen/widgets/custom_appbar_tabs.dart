import 'package:flutter/material.dart';
import 'package:play_store/dummy_db.dart';

class CustomAppbarTabs extends StatefulWidget {
  const CustomAppbarTabs({super.key, required this.currentPage});

  final String currentPage;

  @override
  State<CustomAppbarTabs> createState() => _CustomAppbarTabsState();
}

class _CustomAppbarTabsState extends State<CustomAppbarTabs> {
  @override
  Widget build(BuildContext context) {
    // print("Current Page: ${widget.currentPage}");

    List<dynamic>? categoryTabs = DummyDb.categories[widget.currentPage];

    if (categoryTabs == null) {
      return const SizedBox();
    }

    return DefaultTabController(
      length: categoryTabs.length,
      child: TabBar(
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
