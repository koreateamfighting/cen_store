import 'package:flutter/material.dart';

class BottomBarView extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
        width: 1920,
        height: 230,
        color: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: Center(
          child: Container(
            width: 1100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 첫 번째 섹션: 메뉴들 배치
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //Spacer(),
                    SizedBox(
                      width: 210,
                    ),
                    // 로고 및 제목
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/cenCloudLogo.png',
                            height: 40),
                      ],
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    //Spacer(),
                    // CEN 메뉴
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CEN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'CEN PLAN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'About CEN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 117,
                    ),
                    // Help 메뉴
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 28,
                        ),
                        Text(
                          'HELP',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'FAQ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '고객센터',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '환불 정책',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 127,
                    ),
                    // Language 메뉴
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Language',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '한국어',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'English',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ],
                    ),
                    //Spacer(),
                  ],
                ),

                // 두 번째 섹션: 하단의 저작권 및 링크
                Spacer(),
                Divider(color: Color(0xffFFFFFF), thickness: 1),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 250,
                    ),
                    Text(
                      'Copyright © 2024 Aichemist company',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.30,
                      ),
                    ),
                    SizedBox(width: 31),
                    Text(
                      '법무 팀',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF00A3FF),
                        fontSize: 8,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.24,
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      '개인정보 처리방침',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF00A3FF),
                        fontSize: 8,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.24,
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      '서비스 약관 및 EULA',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF00A3FF),
                        fontSize: 8,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.24,
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      '쿠키',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF00A3FF),
                        fontSize: 8,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.24,
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Site Map',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF00A3FF),
                        fontSize: 8,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.24,
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Do Not Sell Or Share My Personal Information',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF00A3FF),
                        fontSize: 8,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.24,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
