// lib/widget/right_view.dart
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cen_store_webpage/screen/purchase_page.dart';


class ItemRightView extends StatefulWidget {
  @override
  _ItemRightViewState createState() => _ItemRightViewState();
}

class _ItemRightViewState extends State<ItemRightView> {
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

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 472,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '제품명을 입력하는 곳',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Jisu Jeong',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 80.77,
                    height: 13.85,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 13.93,
                            height: 13.85,
                            decoration: ShapeDecoration(
                              color: Color(0xFF666666),
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
                          left: 16.71,
                          top: -0,
                          child: Container(
                            width: 13.93,
                            height: 13.85,
                            decoration: ShapeDecoration(
                              color: Color(0xFF666666),
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
                          left: 33.42,
                          top: -0,
                          child: Container(
                            width: 13.93,
                            height: 13.85,
                            decoration: ShapeDecoration(
                              color: Color(0xFF666666),
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
                          left: 50.13,
                          top: -0,
                          child: Container(
                            width: 13.93,
                            height: 13.85,
                            decoration: ShapeDecoration(
                              color: Color(0xFF666666),
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
                          left: 66.84,
                          top: -0,
                          child: Container(
                            width: 13.93,
                            height: 13.85,
                            decoration: ShapeDecoration(
                              color: Color(0xFF666666),
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
                  Text(
                    '(19)',
                    style: TextStyle(
                      color: Color(0xFF666666),
                      fontSize: 12,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w700,
                      height: 0.11,
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.info_outline,
                    color: Color(0xFFB3B3B3),
                    size: 12,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Price',
                    style: TextStyle(
                      color: Color(0xFFB3B3B3),
                      fontSize: 12,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w600,
                      height: 0.11,
                      letterSpacing: 0.36,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 60,
                    height: 30,
                    decoration: ShapeDecoration(
                      color: Color(0xFFFFE3E3),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    child: Text(
                      '-50%',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFFF0000),
                        fontSize: 18,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    '\$25',
                    style: TextStyle(
                      color: Color(0xFFFF0000),
                      fontSize: 25,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '\$50',
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Color(0xFF8D8D8D),
                      // 선의 색상을 텍스트 색상과 일치시킴
                      color: Color(0xFF8D8D8D),
                      fontSize: 25,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.24,
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Color(0xffDDDDDD),
            height: 1,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.remove_red_eye_rounded,
                color: Color(0xFFB3B3B3),
                size: 20,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '3920 views',
                style: TextStyle(
                  color: Color(0xFF666666),
                  fontSize: 12,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  height: 0.11,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.group,
                color: Color(0xFFB3B3B3),
                size: 20,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '14',
                style: TextStyle(
                  color: Color(0xFF666666),
                  fontSize: 12,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  height: 0.11,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.favorite,
                color: Color(0xFFB3B3B3),
                size: 20,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '352',
                style: TextStyle(
                  color: Color(0xFF666666),
                  fontSize: 12,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  height: 0.11,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Color(0xffDDDDDD),
            height: 1,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                FontAwesomeIcons.scroll,
                color: Colors.grey,
                size: 20,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'License',
                style: TextStyle(
                  color: Color(0xFF666666),
                  fontSize: 12,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  height: 0.11,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '•', // 도트를 표시하기 위한 텍스트
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '싱글 엔티티',
                style: TextStyle(
                  color: Color(0xFF666666),
                  fontSize: 12,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  height: 0.11,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _entityTabButton("싱글엔티티", "개인 사용자나 소규모 비즈니스에 적합"),
              _entityTabButton("멀티 엔티티", "대기업이나 여러 사용자가 공동으로 사용시에 적합"),
            ],
          ),
          SizedBox(
            height: 13,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {},
                child: Text(
                  '자세히 보기',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF00A3FF),
                    fontSize: 10,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w400,
                    height: 0.13,
                    letterSpacing: 0.30,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Color(0xffDDDDDD),
            height: 1,
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              // Navigator를 사용하여 PurchasePage로 이동
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PurchasePage()),
              );
            },
            child: Container(
                width: 473,
                height: 45,
                alignment: Alignment.center,
                decoration: ShapeDecoration(
                  color: Color(0xFF00A3FF),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: Text(
                  '구매하기',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w700,
                    height: 0.09,
                    letterSpacing: 0.48,
                  ),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 150,
                height: 45,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFDDDDDD)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      size: 25,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      'Follow',
                      style: TextStyle(
                        color: Color(0xFF666666),
                        fontSize: 16,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w700,
                        height: 0.09,
                        letterSpacing: 0.48,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 150,
                height: 45,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFDDDDDD)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite_border,
                      size: 25,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      'Like',
                      style: TextStyle(
                        color: Color(0xFF666666),
                        fontSize: 16,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w700,
                        height: 0.09,
                        letterSpacing: 0.48,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 150,
                height: 45,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFDDDDDD)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_bag,
                      size: 25,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      'Cart',
                      style: TextStyle(
                        color: Color(0xFF666666),
                        fontSize: 16,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w700,
                        height: 0.09,
                        letterSpacing: 0.48,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Secure checkout :',
                style: TextStyle(
                  color: Color(0xFF8D8D8D),
                  fontSize: 11,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w400,
                  height: 0.12,
                  letterSpacing: 0.33,
                ),
              ),
              Spacer(),
              Container(
                width: 130,
                height: 16,
                child: Image.asset(
                  'assets/images/credit_cards.png',
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 472,
            height: 390,
            padding: EdgeInsets.only(left: 14, right: 14, top: 20),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFDDDDDD)),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Reviews (+11)',
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 16,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w600,
                        height: 0.08,
                        letterSpacing: 0.48,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        '모든 리뷰 보기',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF00A3FF),
                          fontSize: 12,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          height: 0.11,
                          letterSpacing: 0.36,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 445,
                  height: 346, // 두 개의 리뷰 항목이 포함된 전체 높이
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    // ListView 스크롤 비활성화
                    itemCount: 2,
                    // 첫 두 개의 리뷰만 표시
                    itemBuilder: (context, index) {
                      final review = reviews[index];
                      final daysAgo =
                          DateTime.now().difference(review['date']).inDays;
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
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          width: 445,
                          height: 168,
                          decoration: ShapeDecoration(
                            color: Color(0xFFF0F0F0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                      padding: EdgeInsets.only(top: 12),
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
                                SizedBox(height: 5),
                                Container(
                                    width: 415,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                  width: 415,
                                  child: Text(
                                    review['content'],
                                    style: TextStyle(
                                      color: Color(0xFF666666),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 23),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                    Text(
                                      timeAgo,
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _entityTabButton(String title, String subTitle) {
    return InkWell(
      onTap: () {},
      child: Container(
          width: 230,
          height: 42,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0xFFDDDDDD)),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Spacer(),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF00A3FF),
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.36,
                ),
              ),
              Spacer(),
              Text(
                subTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF999999),
                  fontSize: 9,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  height: 0.17,
                  letterSpacing: 0.27,
                ),
              ),
              Spacer(),
            ],
          )),
    );
  }
}
