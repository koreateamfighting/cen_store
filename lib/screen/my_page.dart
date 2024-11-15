import 'package:cen_store_webpage/widget/purchase_dropdownvalue.dart';
import 'package:cen_store_webpage/widget/purchase_radiobutton.dart';
import 'package:flutter/material.dart';
import 'package:cen_store_webpage/widget/main_layout.dart';
import 'package:cen_store_webpage/widget/purchase_textfield.dart';
import 'package:cen_store_webpage/widget/purchase_dropdownvalue.dart';
import 'package:cen_store_webpage/constants/app_constants.dart';
import 'package:cen_store_webpage/widget/bottom_bar_widget.dart';
import 'package:cen_store_webpage/widget/payment_left_widget.dart';
import 'package:cen_store_webpage/widget/payment_right_widget.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  String selectedTaxOption = '아니오';
  String selectedPayment = 'creditCard';

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      body: SingleChildScrollView(
        child: Container(
          child: Center(
              child: Column(
            children: [
              SizedBox(height: 63),
              Text("여기 할 차례", style: TextStyle(fontSize: 100),),
              BottomBarView(),
            ],
          )),
        ),
      ),
    );
  }


  // 탭 버튼 생성 함수
  Widget _buildMenuBtn(String title, int index) {
    return InkWell(
      onTap: () {
        print('${index}로 이동');
      },
      child: Container(
        width: 100,
        height: 40,
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            color: Color(0xFF333333),
            fontSize: 16,
            fontFamily: 'Pretendard',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
      ),
    );
  }
}
// Row(
// children: [
// Container(
// width: 220,
// padding: EdgeInsets.only(right: 10),
// child: Column(
// children: [
// _buildMenuBtn('프로필',0),
// _buildMenuBtn('청구지 주소',1),
// _buildMenuBtn('MY CEN',2),
// _buildMenuBtn('MY CEN POINT',3),
// _buildMenuBtn('알림',4),
// _buildMenuBtn('보안',5),
// _buildMenuBtn('언어',6),
// ],
// ),
// )
// ],
// )