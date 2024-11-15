import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cen_store_webpage/screen/item_view_page.dart';
import 'package:cen_store_webpage/widget/bottom_bar_widget.dart';

class HomeScreenContent extends StatefulWidget {
  @override
  _HomeScreenContentState createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> {
  bool isExpanded = false; // 리스트 확장 여부 상태 변수


  // Grid 아이템을 정의 (liked 상태 추가)
  final List<Map<String, dynamic>> gridItems = [
    {"color": Colors.red, "title": "Herkules", "price": "\$10", "liked": false},
    {"color": Colors.orange, "title": "Megaphone", "price": "\$9", "liked": false},
    {"color": Colors.yellow, "title": "Coffee Cart", "price": "\$7", "liked": false},
    {"color": Colors.green, "title": "Donnerbrunnen", "price": "\$20", "liked": false},
    {"color": Colors.blue, "title": "Drinking package", "price": "\$5", "liked": false},
    {"color": Colors.indigo, "title": "Putti mit Laterne", "price": "\$15", "liked": false},
    {"color": Colors.purple, "title": "Saab JAS 39 Gripen", "price": "\$19", "liked": false},
    {"color": Colors.pink, "title": "Ship Pinnace", "price": "\$7", "liked": false},
    {"color": Colors.red, "title": "Herkules", "price": "\$10", "liked": false},
    {"color": Colors.orange, "title": "Megaphone", "price": "\$9", "liked": false},
    {"color": Colors.yellow, "title": "Coffee Cart", "price": "\$7", "liked": false},
    {"color": Colors.green, "title": "Donnerbrunnen", "price": "\$20", "liked": false},
    // 더 많은 아이템 추가 가능
  ];

  int get displayedItemCount =>
      isExpanded ? gridItems.length : 8; // 조건에 따라 표시할 아이템 수

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 365,
                  width: 1100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/section1Banner.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 118),
                      Text(
                        'Bring creative ideas\nAnd search for it',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 46,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                          letterSpacing: 1.38,
                        ),
                      ),
                      SizedBox(height: 25),
                      Container(
                        width: 581,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(103, 100, 100, 0.4),
                          border: Border.all(color: Colors.white, width: 1),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "원하시는 에셋 및 키워드를 입력하세요.",
                            hintStyle: TextStyle(color: Colors.white),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 12,
                            ),
                            suffixIcon: Icon(Icons.search, color: Colors.white),
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 72),
                    Text(
                      'Best Asset',
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 24,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildTabButton("Sale"),
                        _buildTabButton("Top-selling"),
                        _buildTabButton("Popular"),
                        _buildTabButton("New"),
                      ],
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
              Center(
                child: Container(
                  width: 1100,
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 25,
                      mainAxisSpacing: 25,
                    ),
                    itemCount: displayedItemCount,
                    itemBuilder: (context, index) {
                      final item = gridItems[index];
                      return _buildColorBox(
                        item['color'],
                        item['title'],
                        item['price'],
                        item['liked'],
                        index,
                      );
                    },
                  ),
                ),
              ),
              Center(
                  child: Container(
                    width: 1100,
                    height: 50,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFDDDDDD)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              isExpanded = !isExpanded; // 더 보기/접기 상태 변경
                            });
                          },
                          child: Row(
                            children: [
                              Icon(isExpanded
                                  ? Icons.keyboard_arrow_up
                                  : Icons.keyboard_arrow_down),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 120,
              ),
              BottomBarView(),
            ],
          ),
        )
    )
    ;
  }

  // 탭 버튼 생성 함수
  Widget _buildTabButton(String title) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 100,
        height: 40,
        alignment: Alignment.center,
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
          ),
        ),
      ),
    );
  }

  Widget _buildColorBox(Color color, String title, String price, bool liked, int index) {
    return Container(
      width: 256,
      height: 187,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ItemViewPage(),
                    ),
                  );
                },
                child: Container(
                  height: 139,
                  decoration: ShapeDecoration(
                    color: color,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      gridItems[index]['liked'] = !gridItems[index]['liked'];
                    });
                  },
                  child: Image.asset(
                    liked ? 'assets/images/like_pressed.png' : 'assets/images/like_default.png',
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 184,
                    child: Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Outfit',
                        color: Color(0xFF242424),
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.48,
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '부제 넣는 부분입니다.',
                    style: TextStyle(
                      color: Color(0xFF8D8D8D),
                      fontSize: 10,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.30,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '\$65',
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      color: Color(0xFF8D8D8D),
                      fontSize: 10,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.24,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    price,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFFFF1D46),
                      fontSize: 16,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.48,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

}
