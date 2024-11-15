import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBarMenu extends StatefulWidget {
  final List<String> mainTabs = [
    'prop',
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
  Timer? _exitTimer;

  void _onMainTabExit() {
    _exitTimer = Timer(Duration(milliseconds: 10000), () {
      if (hoveredTab != null && widget.selectedTab == hoveredTab) {
        setState(() {
          hoveredTab = null;
          widget.onTabSelected(null);
        });
      }
    });
  }

  void _cancelExitTimer() {
    if (_exitTimer?.isActive ?? false) {
      _exitTimer?.cancel();
    }
  }

  void dispose(){
    _exitTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
       // height: 80,
        child: Column(
          children: [
            MouseRegion(
              onEnter: (_) => _cancelExitTimer(), // Timer 취소
              onExit: (_) => _onMainTabExit(), // Timer 시작
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 410),
                      ...widget.mainTabs.expand((tab) {
                        final bool isHovered = hoveredTab == tab;

                        return [
                          GestureDetector(
                            onTap: () {
                              widget.onTabSelected(tab);
                            },
                            child: MouseRegion(
                              onEnter: (_) {
                                _cancelExitTimer();
                                setState(() {
                                  hoveredTab = tab;
                                });
                                widget.onTabSelected(tab);
                              },
                              onExit: (_) {
                                _onMainTabExit();
                              },
                              child: Container(
                                width: 100,
                                height: 40,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 14),
                                decoration: BoxDecoration(
                                  color: isHovered
                                      ? Colors.black
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  tab,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.notoSansGothic(
                                      textStyle: TextStyle(
                                    color:
                                        isHovered ? Colors.blue : Colors.black,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  )),
                                ),
                              ),
                            ),
                          ),
                        ];
                      }).toList(),
                      Spacer(),
                      Spacer(),
                    ],
                  ),
                  if (widget.selectedTab != null &&
                      widget.subTabs.containsKey(widget.selectedTab))
                    MouseRegion(
                      onEnter: (_) {
                        _cancelExitTimer();
                        setState(() {
                          hoveredTab = widget.selectedTab;
                        });
                      },
                      onExit: (_) => _onMainTabExit(),
                      child: Container(
                        height: 40,
                        color: Colors.black,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children:
                              widget.subTabs[widget.selectedTab]!.map((subTab) {
                            return MouseRegion(
                              onEnter: (_) {
                                widget.onSubTabHover(subTab);
                                _cancelExitTimer();
                              },
                              onExit: (_) {
                                widget.onSubTabHover(null);
                                _onMainTabExit();
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
                    ),
                ],
              ),
            ),
          ],
        ));
  }


}
