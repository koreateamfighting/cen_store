// widget/main_layout.dart
import 'package:flutter/material.dart';
import 'package:cen_store_webpage/widget/app_bar_widget.dart';
import 'package:cen_store_webpage/widget/tab_bar_menu.dart';

class MainLayout extends StatefulWidget {
  final Widget body; // 각 페이지에서 전달할 콘텐츠 위젯

  MainLayout({required this.body});

  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  String? selectedTab;
  String? hoveredSubTab;

  final Map<String, List<String>> subTabs = {
    'prop': ['Prop', 'Plants', 'Animation', 'Buildings', 'Scanned Data', 'Environment'],
    '3D Human': ['ADAM Template', 'Animation', 'Accessories'],
    'Scene': ['Realistic\nEnvironment', 'CEN FREE\nEnvironment', 'Fantasy\nEnvironment'],
    'AI Model': ['Real Data Basis', 'Synthetic Data Basis', 'Overall'],
    'Data': ['Synthetic Data', 'Real Data'],
    'Sale': ['Publisher of the Week', 'Quick Start Bundle', 'New release discount']
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget(),
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: widget.body), // 페이지별 콘텐츠가 표시되는 부분
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black.withOpacity(0.5),
                    width: 1.0,
                  ),
                ),
              ),
              child: TabBarMenu(
                subTabs: subTabs,
                selectedTab: selectedTab,
                hoveredSubTab: hoveredSubTab,
                onTabSelected: (tab) {
                  setState(() {
                    selectedTab = tab;
                  });
                },
                onSubTabHover: (subTab) {
                  setState(() {
                    hoveredSubTab = subTab;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
