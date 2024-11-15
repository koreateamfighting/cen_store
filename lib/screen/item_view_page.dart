import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cen_store_webpage/widget/main_layout.dart';
import 'package:cen_store_webpage/widget/item_left_view.dart';
import 'package:cen_store_webpage/widget/item_right_view.dart';
import 'package:cen_store_webpage/widget/bottom_bar_widget.dart';

class ItemViewPage extends StatefulWidget {
  @override
  _ItemViewPageState createState() => _ItemViewPageState();
}

class _ItemViewPageState extends State<ItemViewPage> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  int _currentIndex = 0;
  final List<String> _images = [
    'assets/images/sample_image_01.jpg',
    'assets/images/sample_image_02.jpg',
    'assets/images/sample_image_03.jpg',
    'assets/images/sample_image_04.jpg',
    'assets/images/sample_image_05.jpg',
  ];

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 70),
                Container(
                  width: 1100,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(1.00, -0.00),
                      end: Alignment(-1, 0),
                      colors: [
                        Color(0xFFE77E1C),
                        Color(0xFFCE0796),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  child: Text(
                    '쉽고 편한 CEN, 다양한 에셋으로 리얼한 환경을 100% 선사합니다.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 14),
                Container(
                  width: 1100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 14,
                        child: Text(
                          '홈 > Prop > 식물 > Nature:Type4',
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 10,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        height: 14,
                        child: Text(
                          'Next >',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // LeftView widget
                    Flexible(
                        child: ItemLeftView(
                      carouselController: _carouselController,
                      currentIndex: _currentIndex,
                      onPageChanged: _onPageChanged,
                      images: _images,
                    )),
                    SizedBox(width: 27),
                    // RightView widget
                    Flexible(
                      child: ItemRightView(),
                    ),
                  ],
                ),
                BottomBarView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
