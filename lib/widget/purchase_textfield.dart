
import 'package:flutter/material.dart';

Widget PurchaseTextField(double containerWidth ,double containerHeight ){
  return Container(
    width: containerWidth,
    height: containerHeight,
    padding:
    EdgeInsets.symmetric(horizontal: 8.0),
// 여백 추가
    decoration: BoxDecoration(
      color: Colors.white, // 배경색 설정
      borderRadius: BorderRadius.circular(
          8.0), // 둥근 모서리 설정
      border: Border.all(
          color: Colors.grey), // 테두리 설정
    ),
    child: TextField(
      decoration: InputDecoration(
        border: InputBorder.none, // 테두리 제거
        contentPadding: EdgeInsets.symmetric(
            vertical: 12.0), // 텍스트 여백 조정
      ),
    ),
  );
}