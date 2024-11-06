import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // 상단 탭 메뉴


          // 배경 이미지와 검색창이 포함된 섹션
          Stack(
            alignment: Alignment.center,
            children: [
              // 배경 이미지 컨테이너

              // 중앙 텍스트와 검색창
              Center(
                child: Container(
                  height: 320,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/section1Banner.png"),
                      fit: BoxFit.cover, // 배경 이미지가 컨테이너에 맞게 채워짐
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Bring creative ideas\nAnd search for it",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.notoSansGothic(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 400,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Please enter the desired asset and keywords.",
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(horizontal: 10),
                            suffixIcon: Icon(Icons.search),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Column(
              children: [
                Text(
                  "Best Asset",
                  style: GoogleFonts.notoSansGothic(
                    textStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
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
              ],
            ),
          ),

          // 리스트 항목 컨테이너들
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: GridView.count(
              shrinkWrap: true, // GridView가 스크롤 없이 전체 크기를 차지하도록 설정
              physics: NeverScrollableScrollPhysics(), // SingleChildScrollView에서 스크롤이 가능하므로 GridView 자체 스크롤 비활성화
              crossAxisCount: 4, // 4개의 열로 나누기
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              padding: EdgeInsets.symmetric(horizontal: 16),
              children: [
                _buildColorBox(Colors.red, "Herkules", "\$10"),
                _buildColorBox(Colors.orange, "Megaphone", "\$9"),
                _buildColorBox(Colors.yellow, "Coffee Cart", "\$7"),
                _buildColorBox(Colors.green, "Donnerbrunnen", "\$20"),
                _buildColorBox(Colors.blue, "Drinking package", "\$5"),
                _buildColorBox(Colors.indigo, "Putti mit Laterne", "\$15"),
                _buildColorBox(Colors.purple, "Saab JAS 39 Gripen", "\$19"),
                _buildColorBox(Colors.pink, "Ship Pinnace", "\$7"),
              ],
            ),
          ),

          // 하단 페이징 영역
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 탭 버튼 생성 함수
  Widget _buildTabButton(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // 컬러 박스 생성 함수
  Widget _buildColorBox(Color color, String title, String price) {
    return Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(),
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            price,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
