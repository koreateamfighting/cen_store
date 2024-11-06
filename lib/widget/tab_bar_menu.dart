import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBarMenu extends StatefulWidget {
  final List<String> mainTabs = [
    'props',
    '3D Human',
    'Scene',
    'AI Model',
    'Data',
    'Sale'
  ];

  final Map<String, List<String>> subTabs;
  final String? selectedTab;
  final String? hoveredSubTab;
  final ValueChanged<String?> onTabSelected;
  final ValueChanged<String?> onSubTabHover;

  TabBarMenu({
    Key? key,
    required this.subTabs,
    this.selectedTab,
    this.hoveredSubTab,
    required this.onTabSelected,
    required this.onSubTabHover,
  }) : super(key: key);

  @override
  _TabBarMenuState createState() => _TabBarMenuState();
}

class _TabBarMenuState extends State<TabBarMenu> {
  String? hoveredTab;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MouseRegion(
          onExit: (_) {
            widget.onTabSelected(null);
            widget.onSubTabHover(null);
            setState(() {
              hoveredTab = null;
            });
          },
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Spacer(), // Left spacer
                  ...widget.mainTabs.expand((tab) {
                    final bool isHovered = hoveredTab == tab;

                    return [
                      GestureDetector(
                        onTap: () {
                          widget.onTabSelected(tab);
                        },
                        child: MouseRegion(
                          onEnter: (_) {
                            setState(() {
                              hoveredTab = tab;
                            });
                            widget.onTabSelected(tab);
                          },
                          onExit: (_) {
                            setState(() {
                              hoveredTab = null;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 18),
                            decoration: BoxDecoration(
                              color:
                                  isHovered ? Colors.black : Colors.transparent,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              tab,
                              style: GoogleFonts.notoSansGothic(
                                  textStyle: TextStyle(
                                color: isHovered ? Colors.blue : Colors.black,
                                fontSize: 16, // 글씨 크기 증가
                                fontWeight:
                                    FontWeight.bold

                              )),
                            ),

                            // Text(
                            //     "Company",
                            //     style :GoogleFonts.poppins(textStyle:TextStyle(color: Colors.white, fontSize: isMobile? 30:width * 0.023), )
                            // ),
                          ),
                        ),
                      ),
                      SizedBox(width: 34), // 탭 항목 사이 간격 추가
                    ];
                  }).toList(),
                  Spacer(), // Right spacer 1
                  Spacer(), // Right spacer 2
                ],
              ),
              if (widget.selectedTab != null &&
                  widget.subTabs.containsKey(widget.selectedTab))
                Container(
                  color: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: widget.subTabs[widget.selectedTab]!.map((subTab) {
                      return MouseRegion(
                        onEnter: (_) {
                          widget.onSubTabHover(subTab);
                        },
                        onExit: (_) {
                          widget.onSubTabHover(null);
                        },
                        child: GestureDetector(
                          onTap: () {
                            print("Selected sub-tab: $subTab");
                          },
                          child: Text(
                            subTab,
                            style: TextStyle(
                              color: widget.hoveredSubTab == subTab
                                  ? Colors.blue
                                  : Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
