import 'package:flutter/material.dart';
import 'package:cen_store_webpage/widget/hover_icon_with_tooltip.dart';
import 'package:cen_store_webpage/widget/tab_bar_menu.dart';
import 'package:cen_store_webpage/screen/home_screen_content.dart';
import 'package:cen_store_webpage/widget/app_bar_widget.dart';



class CENStoreApp extends StatefulWidget {
  @override
  _CENStoreAppState createState() => _CENStoreAppState();
}

class _CENStoreAppState extends State<CENStoreApp> {
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBarWidget(), // 변경된 AppBarWidget 사용
        body: Stack(
          children: [
            // HomeScreenContent (배경 이미지 및 메인 콘텐츠)
            Positioned.fill(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: HomeScreenContent(),
                  ),
                ],
              ),
            ),
            // TabBarMenu를 화면 상단에 고정
            Positioned(
              top: 0, // 원하는 위치로 조정 가능
              left: 0,
              right: 0,
              child: Container(

                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black.withOpacity(0.5), // 선 색상
                      width: 1.0,         // 선 두께
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
              )
              ,
            ),


          ],
        ),
      ),
    );
  }
}
