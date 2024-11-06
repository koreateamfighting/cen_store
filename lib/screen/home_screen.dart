import 'package:flutter/material.dart';
import 'package:cen_store_webpage/widget/hover_icon_with_tooltip.dart';
import 'package:cen_store_webpage/widget/tab_bar_menu.dart';
import 'package:cen_store_webpage/screen/home_screen_content.dart';


class CENStoreApp extends StatefulWidget {
  @override
  _CENStoreAppState createState() => _CENStoreAppState();
}

class _CENStoreAppState extends State<CENStoreApp> {
  String? selectedTab;
  String? hoveredSubTab;

  final Map<String, List<String>> subTabs = {
    'props': ['Prop', 'Plants', 'Animation', 'Buildings', 'Scanned Data', 'Environment'],
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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: AppBar(
            backgroundColor: Colors.black,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Spacer(),
                Image.asset('assets/images/cenCloudLogo.png', height: 40),
                Spacer(),
                Spacer(),
                Row(
                  children: [
                    HoverIconWithTooltip(
                      defaultIcon: 'assets/images/myAssetWhiteIcon.png',
                      hoverIcon: 'assets/images/myAssetWhiteIcon.png',
                      tooltip: 'MyAsset',
                      onPressed: () {},
                    ),
                    HoverIconWithTooltip(
                      defaultIcon: 'assets/images/bucketIcon.png',
                      hoverIcon: 'assets/images/bucketHoverIcon.png',
                      tooltip: 'Cart',
                      onPressed: () {},
                    ),
                    HoverIconWithTooltip(
                      defaultIcon: 'assets/images/favoriteIcon.png',
                      hoverIcon: 'assets/images/favoriteHoverIcon.png',
                      tooltip: 'Saved',
                      onPressed: () {},
                    ),
                    HoverIconWithTooltip(
                      defaultIcon: 'assets/images/mypageIcon.png',
                      hoverIcon: 'assets/images/mypageHoverIcon.png',
                      tooltip: 'MyPage',
                      onPressed: () {},
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
        body: Stack(
          children: [
            // HomeScreenContent (배경 이미지 및 메인 콘텐츠)
            Positioned.fill(
              child: Column(
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
                height: 60,
                color: Colors.white,
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

            // Divider로 TabBarMenu와 HomeScreenContent의 분리선
            Positioned(
              top: 60,
              left: 0,
              right: 0,
              child: Divider(
                color: Colors.black,
                height: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
