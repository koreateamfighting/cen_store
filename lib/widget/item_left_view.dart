// lib/widget/left_view.dart
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:intl/intl.dart';

class ItemLeftView extends StatefulWidget {
  final CarouselSliderController carouselController;
  final int currentIndex;
  final Function(int) onPageChanged;
  final List<String> images;

  ItemLeftView({
    required this.carouselController,
    required this.currentIndex,
    required this.onPageChanged,
    required this.images,
  });

  @override
  _ItemLeftViewState createState() => _ItemLeftViewState();
}

class _ItemLeftViewState extends State<ItemLeftView> {
  List<Map<String, dynamic>> reviews = [
    {
      'initial': 'H',
      'nickname': 'Honggildong',
      'title': '너무 좋아요!',
      'content': '좋은 자원입니다. 많은 기능과 옵션이 제공됩니다. 매우 만족스러운 구매입니다.',
      'rating': 5,
      'date': DateTime.now().subtract(Duration(days: 4))
    },
    {
      'initial': 'T',
      'nickname': 'Thomas',
      'title': 'Amazing set!',
      'content':
          'All models in great quality and modular as described. A huge amount of facial customization options, done by BlendShapes. Worth buying!',
      'rating': 5,
      'date': DateTime.now().subtract(Duration(days: 9))
    },
    {
      'initial': 'A',
      'nickname': 'Anna',
      'title': 'Very Nice',
      'content': 'Great. Nice',
      'rating': 4,
      'date': DateTime.now().subtract(Duration(days: 7))
    },
    {
      'initial': 'H',
      'nickname': 'Honggildong',
      'title': '너무 좋아요!',
      'content': '좋은 자원입니다. 많은 기능과 옵션이 제공됩니다. 매우 만족스러운 구매입니다.',
      'rating': 5,
      'date': DateTime.now().subtract(Duration(days: 30))
    },
    {
      'initial': 'T',
      'nickname': 'Thomas',
      'title': 'Amazing set!',
      'content':
          'All models in great quality and modular as described. A huge amount of facial customization options, done by BlendShapes. Worth buying!',
      'rating': 5,
      'date': DateTime.now().subtract(Duration(days: 9))
    },
    {
      'initial': 'A',
      'nickname': 'Anna',
      'title': 'Very Nice',
      'content': 'Great. Nice',
      'rating': 4,
      'date': DateTime.now().subtract(Duration(days: 9))
    },
    {
      'initial': 'H',
      'nickname': 'Honggildong',
      'title': '너무 좋아요!',
      'content': '좋은 자원입니다. 많은 기능과 옵션이 제공됩니다. 매우 만족스러운 구매입니다.',
      'rating': 5,
      'date': DateTime.now().subtract(Duration(days: 4))
    },
    {
      'initial': 'T',
      'nickname': 'Thomas',
      'title': 'Amazing set!',
      'content':
          'All models in great quality and modular as described. A huge amount of facial customization options, done by BlendShapes. Worth buying!',
      'rating': 5,
      'date': DateTime.now().subtract(Duration(days: 9))
    },
    {
      'initial': 'A',
      'nickname': 'Anna',
      'title': 'Very Nice',
      'content': 'Great. Nice',
      'rating': 4,
      'date': DateTime.now().subtract(Duration(days: 9))
    },
    {
      'initial': 'H',
      'nickname': 'Honggildong',
      'title': '너무 좋아요!',
      'content': '좋은 자원입니다. 많은 기능과 옵션이 제공됩니다. 매우 만족스러운 구매입니다.',
      'rating': 5,
      'date': DateTime.now().subtract(Duration(days: 4))
    },
    {
      'initial': 'T',
      'nickname': 'Thomas',
      'title': 'Amazing set!',
      'content':
          'All models in great quality and modular as described. A huge amount of facial customization options, done by BlendShapes. Worth buying!',
      'rating': 5,
      'date': DateTime.now().subtract(Duration(days: 9))
    },
    {
      'initial': 'A',
      'nickname': 'Anna',
      'title': 'Very Nice',
      'content': 'Great. Nice',
      'rating': 4,
      'date': DateTime.now().subtract(Duration(days: 9))
    },
  ];

  int _selectedIndex = 1;
  String _selectedSort = '최신순';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 600,
            height: 370,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Stack(
              children: [
                CarouselSlider(
                  items: widget.images.map((imagePath) {
                    return Image.asset(
                      imagePath,
                      fit: BoxFit.fill,
                      width: double.infinity,
                    );
                  }).toList(),
                  carouselController: widget.carouselController,
                  options: CarouselOptions(
                    height: 370.0,
                    autoPlay: false,
                    viewportFraction: 1,
                    enlargeCenterPage: false,
                    onPageChanged: (index, reason) {
                      widget.onPageChanged(index);
                    },
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 175,
                  child: GestureDetector(
                    onTap: () {
                      widget.carouselController.previousPage();
                    },
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.7),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 14,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 175,
                  child: GestureDetector(
                    onTap: () {
                      widget.carouselController.nextPage();
                    },
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.7),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 75,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.images.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    widget.carouselController.jumpToPage(index);
                    widget.onPageChanged(index);
                  },
                  child: Container(
                    width: 100,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: widget.currentIndex == index
                            ? Colors.blue
                            : Colors.transparent,
                        width: 1,
                      ),
                    ),
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        widget.currentIndex == index
                            ? Colors.transparent
                            : Colors.grey,
                        BlendMode.saturation,
                      ),
                      child: Image.asset(
                        widget.images[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  widget.carouselController.previousPage();
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 8,
                  color: Color(0xff454545),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: widget.images.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () =>
                        widget.carouselController.jumpToPage(entry.key),
                    child: Container(
                      width: 7.0,
                      height: 7.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: widget.currentIndex == entry.key
                            ? Colors.blueAccent
                            : Colors.grey,
                      ),
                    ),
                  );
                }).toList(),
              ),
              GestureDetector(
                onTap: () {
                  widget.carouselController.nextPage();
                },
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 8,
                  color: Color(0xff454545),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _itemTabButton("제품 설명", 0),
              _itemTabButton("리뷰", 1),
            ],
          ),
          SizedBox(height: 20),
          _selectedIndex == 0 ? _productDetailView() : _reviewView(),
        ],
      ),
    );
  }

  Widget _itemTabButton(String title, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        width: 100,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: _selectedIndex == index
                  ? Color(0xff00a3ff)
                  : Colors.transparent,
              width: 1,
            ),
          ),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
            color:
                _selectedIndex == index ? Color(0xff00a3ff) : Color(0xFF8D8D8D),
            fontWeight: FontWeight.bold,
            letterSpacing: 0.36,
          ),
        ),
      ),
    );
  }

  Widget _buildInfoColumn(String title, String value) {
    return Container(
      width: 134,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color(0xFF333333),
              fontSize: 12,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w700,
              letterSpacing: 0.36,
            ),
          ),
          SizedBox(height: 10),
          Text(
            value,
            style: TextStyle(
              color: Color(0xFF666666),
              fontSize: 12,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w400,
              height: 0.12,
              letterSpacing: 0.36,
            ),
          ),
        ],
      ),
    );
  }

  Widget _productDetailView() {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 421,
                child: Text(
                  '3D models of cute girls in swimsuits with many customization options! Rigged to Humanoid Skeleton with additional bones, Apple blendshapes. Completely modular, body without clothes is included.',
                  style: TextStyle(
                    color: Color(0xFF666666),
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.36,
                    height: 1.2,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 25),
          Divider(
            color: Color(0xfff0f0f0),
            height: 1,
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Container(
                width: 429,
                child: Text(
                  '볼드체로 표기하는 부분. 1줄, 볼드체로 표기하는 부분. 1줄 ',
                  style: TextStyle(
                    color: Color(0xFF666666),
                    fontSize: 14,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.36,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Flexible(
                child: Text(
                  'The Built-in Render Pipeline is Unity’s default render pipeline. It is a general-purpose render pipeline that has limited options for customization. The Universal Render Pipeline (URP) is a Scriptable Render Pipeline that is quick and easy to customize, and lets you create optimized graphics across a wide range of platforms. The High Definition Render Pipeline (HDRP) is a Scriptable Render Pipeline that lets you create cutting-edge, high-fidelity graphics on high-end platforms.',
                  style: TextStyle(
                    color: Color(0xFF666666),
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.36,
                    height: 1.2,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          Row(
            children: [
              _buildInfoColumn('Version', '2021.3.31'),
              _buildInfoColumn('Built-in', 'Compatible'),
              _buildInfoColumn('URP', 'Compatible'),
              _buildInfoColumn('HDRP', 'Compatible'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _reviewView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 25,
        ),
        Container(
          width: 429,
          child: Text(
            'All Review',
            style: TextStyle(
              color: Color(0xFF333333),
              fontSize: 14,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w700,
              height: 0.11,
              letterSpacing: 0.42,
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: 600,
          height: 130,
          decoration: ShapeDecoration(
            color: Color(0xFFF0F0F0),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 116,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '이용자 총 평점',
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 12,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.36,
                      ),
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    Container(
                      width: 116,
                      height: 20,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: ShapeDecoration(
                                color: Color(0xFF00A3FF),
                                shape: StarBorder(
                                  points: 5,
                                  innerRadiusRatio: 0.42,
                                  pointRounding: 0,
                                  valleyRounding: 0,
                                  rotation: 0,
                                  squash: 0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 24,
                            top: 0,
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: ShapeDecoration(
                                color: Color(0xFF00A3FF),
                                shape: StarBorder(
                                  points: 5,
                                  innerRadiusRatio: 0.42,
                                  pointRounding: 0,
                                  valleyRounding: 0,
                                  rotation: 0,
                                  squash: 0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 48,
                            top: 0,
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: ShapeDecoration(
                                color: Color(0xFF00A3FF),
                                shape: StarBorder(
                                  points: 5,
                                  innerRadiusRatio: 0.42,
                                  pointRounding: 0,
                                  valleyRounding: 0,
                                  rotation: 0,
                                  squash: 0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 72,
                            top: 0,
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: ShapeDecoration(
                                color: Color(0xFF00A3FF),
                                shape: StarBorder(
                                  points: 5,
                                  innerRadiusRatio: 0.42,
                                  pointRounding: 0,
                                  valleyRounding: 0,
                                  rotation: 0,
                                  squash: 0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 96,
                            top: 0,
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: ShapeDecoration(
                                color: Color(0xFF00A3FF),
                                shape: StarBorder(
                                  points: 5,
                                  innerRadiusRatio: 0.42,
                                  pointRounding: 0,
                                  valleyRounding: 0,
                                  rotation: 0,
                                  squash: 0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      '4.8/5',
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 18,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w700,
                        height: 0.08,
                        letterSpacing: 0.54,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 64,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '전체 리뷰 수',
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 12,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.36,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 32,
                      child: Icon(
                        Icons.group,
                        size: 32,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      '11',
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 18,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w700,
                        height: 0.08,
                        letterSpacing: 0.54,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 116,

              ),
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          width: 130,
          height: 35,
          decoration: ShapeDecoration(
            color: Color(0xFFF0F0F0),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0), // Dropdown 내 여백 설정
            child: DropdownButton<String>(
              value: _selectedSort,
              dropdownColor: Colors.white,
              icon: Icon(Icons.arrow_drop_down),
              isExpanded: true,
              // 전체 넓이에 맞추기
              underline: SizedBox(),
              // 기본 밑줄 제거
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w500,
              ),
              items: <String>['최신순', '오래된 순'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedSort = newValue!;
                });
                // 정렬 방식에 따라 로직 추가
                // 예: if (_selectedSort == '오래된 순') { ... }
              },
            ),
          ),
        ),
        SizedBox(
          height: 35,
        ),
        Container(
          padding: EdgeInsets.all(16),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: reviews.length,
            itemBuilder: (context, index) {
              final review = reviews[index];
              final daysAgo = DateTime.now().difference(review['date']).inDays;
              final hoursAgo =
                  DateTime.now().difference(review['date']).inHours;
              final minutesAgo =
                  DateTime.now().difference(review['date']).inMinutes;

              // 시간 차이 계산하여 표시
              String timeAgo;
              if (daysAgo > 0) {
                timeAgo = '$daysAgo일 전';
              } else if (hoursAgo > 0) {
                timeAgo = '$hoursAgo시간 전';
              } else {
                timeAgo = '$minutesAgo분 전';
              }

              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 28,
                        height: 28,
                        child: CircleAvatar(
                          radius: 20,
                          child: Text(
                            review['initial'],
                            style: TextStyle(color: Colors.white),
                          ),
                          backgroundColor: Colors.blueAccent,
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 28,
                        padding: EdgeInsets.only(top: 8),
                        child: Text(
                          review['nickname'],
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                            height: 0.11,
                            letterSpacing: 0.36,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                      width: 600,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              review['title'],
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                              ),
                            ),
                          ])),
                  SizedBox(height: 5),
                  Container(
                    width: 600,
                    child: Text(
                      review['content'],
                      style: TextStyle(
                        color: Color(0xFF666666),
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      Row(
                        children: List.generate(5, (i) {
                          return Icon(
                            Icons.star,
                            size: 10,
                            color: i < review['rating']
                                ? Colors.blueAccent
                                : Colors.grey,
                          );
                        }),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        timeAgo,
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            Text(
                              '리뷰 신고',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF8D8D8D),
                                fontSize: 12,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.36,
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Icon(Icons.flag, color: Colors.grey),
                          ],
                        ),
                      )
                    ],
                  ),
                  Divider(color: Colors.grey.shade300),
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
