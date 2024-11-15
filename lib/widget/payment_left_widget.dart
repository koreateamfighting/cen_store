import 'package:flutter/material.dart';
import 'package:cen_store_webpage/widget/purchase_dropdownvalue.dart';
import 'package:cen_store_webpage/widget/purchase_radiobutton.dart';
import 'package:cen_store_webpage/widget/purchase_textfield.dart';
import 'package:cen_store_webpage/widget/purchase_dropdownvalue.dart';
import 'package:cen_store_webpage/constants/app_constants.dart';



class PaymentLeftView extends StatefulWidget{

  @override
  _PaymentLeftViewState createState() =>_PaymentLeftViewState();
}

class _PaymentLeftViewState extends State<PaymentLeftView>{
  String selectedTaxOption = '아니오';
  String selectedPayment = 'creditCard';
  bool _isPaymentInfoSaved = false;

  @override
  Widget build(BuildContext context){
    return  Container(
      width: 580,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: 580,
            height: 597,
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    width: 1, color: Color(0xFFDDDDDD)),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '결제 정보',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Divider(
                  color: Color(0xffDDDDDD),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width: 263,
                        child: Text(
                          '이름*',
                          style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 16,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w700,
                              height: 0),
                        )),
                    Container(
                        width: 263,
                        child: Text(
                          '성*',
                          style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 16,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w700,
                              height: 0),
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    PurchaseTextField(263, 45),
                    Spacer(),
                    PurchaseTextField(263, 45),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width: 263,
                        child: Text(
                          '이메일*',
                          style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 16,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w700,
                              height: 0),
                        )),
                    Container(
                        width: 263,
                        child: Text(
                          '전화번호*',
                          style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 16,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w700,
                              height: 0),
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    PurchaseTextField(263, 45),
                    Spacer(),
                    PurchaseTextField(263, 45),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width: 263,
                        child: Text(
                          '주문자 주소*',
                          style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 16,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w700,
                              height: 0),
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    PurchaseDropDown(
                        containerWidth: 264,
                        containerHeight: 45,
                        selectedTarget:
                        AppDimensions.selectedCountry,
                        itemList: AppDimensions.countries),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [PurchaseTextField(536, 45)],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    PurchaseTextField(263, 45),
                    Spacer(),
                    PurchaseTextField(263, 45),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width: 263,
                        child: Text(
                          '세금 면제 선택*',
                          style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 16,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w700,
                              height: 0),
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    PurchaseRadiobutton(
                      options: ['네', '아니오'],
                      initialValue: '아니오',
                      onChanged: (selectedTaxOption) {
                        print("선택된 값: $selectedTaxOption");
                        // 필요에 따라 다른 동작 추가
                      },
                      direction: 'horizon',
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 580,
            height: 580,
            padding: EdgeInsets.only(left: 16, right: 16),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    width: 1, color: Color(0xFFDDDDDD)),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '결제 수단',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Divider(
                  color: Color(0xffDDDDDD),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 21,
                      child: Column(
                        children: [
                          PurchaseRadiobutton(
                            options: ['point', 'creditCard'],
                            initialValue: 'creditCard',
                            onChanged: (selectedPayment) {
                              print("선택된 값: $selectedPayment");
                              // 필요에 따라 다른 동작 추가
                            },
                            direction: 'vertical',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 64,
                              height: 23.37,
                              child: Image.asset(
                                'assets/images/cen_logo.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Text(
                              'POINT 사용하기',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 16,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              '보유 POINT : \$150.00',
                              style: TextStyle(
                                color: Color(0xFF00A3FF),
                                fontSize: 14,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: 300,
                          height: 45,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1,
                                  color: Color(0xFFDDDDDD)),
                              borderRadius:
                              BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 64,
                              height: 23.37,
                              child: Icon(Icons.payment),
                            ),
                            Text(
                              '신용카드 결제',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 16,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          color: Color(0xffDDDDDD),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '신용카드번호*',
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 16,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        PurchaseTextField(497, 45),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          children: [
                            Text(
                              '유효기간 만료일*',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 16,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            SizedBox(
                              width: 233,
                            ),
                            Text(
                              'CVC/CVV2*',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 16,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            PurchaseDropDown(
                                containerWidth: 160,
                                containerHeight: 45,
                                selectedTarget: AppDimensions
                                    .selectedexpirationPeriodMonth,
                                itemList: AppDimensions
                                    .expirationPeriodMonth),
                            SizedBox(
                              width: 11,
                            ),
                            PurchaseDropDown(
                                containerWidth: 160,
                                containerHeight: 45,
                                selectedTarget: AppDimensions
                                    .selectedexpirationPeriodYear,
                                itemList: AppDimensions
                                    .expirationPeriodYear),
                            SizedBox(
                              width: 11,
                            ),
                            PurchaseTextField(160, 45)
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          children: [
                            Text(
                              '신용카드 소유자 성명*',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 16,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        PurchaseTextField(497, 45),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isPaymentInfoSaved = !_isPaymentInfoSaved;
                                });

                              },
                              child: Container(
                                width: 21,
                                height: 21,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(

                                  ),
                                  color:  Colors.white,
                                ),
                                child: _isPaymentInfoSaved == true
                                    ? Center(
                                  child: Container(
                                    width: 11,
                                    height: 11,
                                    decoration: BoxDecoration(
                                      color: Color(0xff00a3ff),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ),
                                )
                                    : null,
                              ),
                            ),
                            SizedBox(width : 15),
                            Text(
                              '다음 결제를 위해 결제 정보를 저장하겠습니다.',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 16,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            )

                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 11,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '모든 가격에 부가가치세/세금 미포함',
                style: TextStyle(
                  color: Color(0xFF8D8D8D),
                  fontSize: 11,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.33,
                ),
              ),
              Container(
                width: 130,
                height: 16,
                child: Image.asset(
                  'assets/images/credit_cards.png',
                  fit: BoxFit.fill,
                ),
              )

            ],
          )
        ],
      ),
    );
  }
}