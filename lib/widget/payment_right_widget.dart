import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';


class PaymentRightView extends StatefulWidget {

  @override
  _PaymentRightViewState createState() => _PaymentRightViewState();
}

class _PaymentRightViewState extends State<PaymentRightView> {
  bool _isAgree = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 500,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              width: 500,
              //height: 870,
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 16),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: 1, color: Color(0xFF333333)),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    '주문 에셋 1개',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Color(0xffDDDDDD),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: 16,
                      child: Text(
                        'Infinity PBR / Magic Pig Games',
                        style: TextStyle(
                          color: Color(0xFF8D8D8D),
                          fontSize: 12,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w300,
                          letterSpacing: 0.36,
                        ),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                      color: Colors.white,
                      height: 85,
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 282,
                                child: Text(
                                  'Medieval Fantasy Town Village Forest',
                                  style: TextStyle(
                                    color: Color(0xFF242424),
                                    fontSize: 16,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.48,
                                  ),
                                  overflow: TextOverflow
                                      .ellipsis, // 생략 표시
                                  maxLines: 1, // 한 줄만 표시
                                ),
                              ),
                              SizedBox(height: 32),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 25,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFFFE3E3),
                                      shape:
                                      RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius
                                              .circular(
                                              5)),
                                    ),
                                    child: Text(
                                      '-50%',
                                      textAlign:
                                      TextAlign.center,
                                      style: TextStyle(
                                        color:
                                        Color(0xFFFF0000),
                                        fontSize: 15,
                                        fontFamily:
                                        'Pretendard',
                                        fontWeight:
                                        FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '\$25',
                                    style: TextStyle(
                                      color: Color(0xFFFF0000),
                                      fontSize: 20,
                                      fontFamily: 'Pretendard',
                                      fontWeight:
                                      FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '\$50',
                                    style: TextStyle(
                                      decoration: TextDecoration
                                          .lineThrough,
                                      decorationColor:
                                      Color(0xFF8D8D8D),
                                      // 선의 색상을 텍스트 색상과 일치시킴
                                      color: Color(0xFF8D8D8D),
                                      fontSize: 20,
                                      fontFamily: 'Outfit',
                                      fontWeight:
                                      FontWeight.w300,
                                      letterSpacing: 0.24,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            width: 21,
                          ),
                          Container(
                            width: 152,
                            height: 83,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(
                                  5), // 둥근 모서리 설정
                              color: Colors.grey, // 필요하면 배경색 추가
                            ),
                            child: Image.asset(
                              'assets/images/sample_image_01.jpg',
                              fit: BoxFit.fill,
                            ),
                          )
                        ],
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Color(0xffDDDDDD),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '1 Item(s)',
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 16,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      Text(
                        '\$82.00',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 16,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: 0.48,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '할인',
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 16,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      Text(
                        '-\$45.00',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF00A3FF),
                          fontSize: 16,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: 0.48,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DottedBorder(
                      color: Color(0xffdddddd),
                      strokeWidth: 1,
                      dashPattern: [6, 3],
                      // 점선 패턴 (길이, 간격)
                      borderType: BorderType.RRect,
                      // 둥근 사각형 테두리
                      radius: Radius.circular(8),
                      // 둥근 모서리 반경 (선택 사항)
                      padding: EdgeInsets.all(0),
                      //
                      child: Container()),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '결제 금액',
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 16,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      Text(
                        '\$37.00',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 16,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: 0.48,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '세금',
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 16,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      Text(
                        '\$00.00',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 16,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: 0.48,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Color(0xffDDDDDD),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'POINT 사용',
                        style: TextStyle(
                          color: Color(0xFF00A3FF),
                          fontSize: 16,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      Text(
                        '\$00.00',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF00A3FF),
                          fontSize: 16,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: 0.48,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 25,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w700,
                          height: 0,
                          letterSpacing: 0.75,
                        ),
                      ),
                      Text(
                        '\$37',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 35,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w700,
                          height: 0,
                          letterSpacing: 1.05,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Color(0xffDDDDDD),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Transform.translate(
                          offset: Offset(0, -38), child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _isAgree = !_isAgree;
                          });
                        },
                        child: Container(
                          width: 21,
                          height: 21,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius:
                            BorderRadius.circular(4),
                            border: Border.all(),
                            color: Colors.white,
                          ),
                          child: _isAgree == true
                              ? Center(
                            child: Container(
                              width: 11,
                              height: 11,
                              decoration: BoxDecoration(
                                color: Color(0xff00a3ff),
                                borderRadius:
                                BorderRadius.circular(
                                    2),
                              ),
                            ),
                          )
                              : null,
                        ),
                      ))
                      ,
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 426,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text:
                                '나는 이 자산에 대한 최종 사용자 라이센스 계약을 이해하고 이에 동의합니다.제품 페이지에 달리 명시되지 않는 한, 표준 CEN 스토어 ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                  height: 1.2,
                                  letterSpacing: 0.32,
                                ),
                              ),
                              TextSpan(
                                text: '최종 사용자 라이선스 계약이',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 14,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                  decoration:
                                  TextDecoration.underline,
                                  decorationColor: Colors.blue,
                                  height: 1.2,
                                  letterSpacing: 0.32,
                                ),
                              ),
                              TextSpan(
                                text:
                                '적용됩니다.\n나는 CEN Store가 디지털 콘텐츠에 대한 즉각적인 액세스를 제공하므로 EU 거주자에게 제공되는 14일 철회 기간을 면제한다는 점을 이해하고 이에 동의합니다.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                  height: 1.2,
                                  letterSpacing: 0.32,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: () {

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
                          '결제하기',
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

                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              padding: EdgeInsets.all(20),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: 1, color: Color(0xFFDDDDDD)),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child:Column(
                children: [
                  InkWell(onTap: (){},child:    Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '개인정보 제 3자 제공고지',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                   ),

                  InkWell(onTap: (){},child:    Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '전자상거래 구매 안전 서비스 안내',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
