// purchase_radiobutton.dart
import 'package:flutter/material.dart';

class PurchaseRadiobutton extends StatefulWidget {
  final List<String> options; // 라디오 버튼의 옵션 목록
  final String initialValue; // 초기 선택값
  final ValueChanged<String> onChanged; // 선택값 변경 콜백
  final String direction;

  PurchaseRadiobutton({
    required this.options,
    required this.initialValue,
    required this.onChanged,
    required this.direction
  });

  @override
  _PurchaseRadiobuttonState createState() => _PurchaseRadiobuttonState();
}

class _PurchaseRadiobuttonState extends State<PurchaseRadiobutton> {
  late String _selectedOption;

  @override
  void initState() {
    super.initState();
    _selectedOption = widget.initialValue; // 초기값 설정
  }

  @override
  Widget build(BuildContext context) {
    return widget.direction == 'horizon'? Row(
      children: widget.options.map((option) {
        return _buildSquareRadioButton(option);
      }).toList(),
    ): Column(
      children: widget.options.map((option) {
        return _buildSquareRadioButton(option);
      }).toList(),
    );
  }

  Widget _buildSquareRadioButton(String value) {
    return widget.direction == 'horizon'? Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _selectedOption = value;
            });
            widget.onChanged(value); // 부모에게 선택값 전달
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
            child: _selectedOption == value
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
        SizedBox(width: 15), // 텍스트와 사각형 버튼 간 간격
        Text(
          value,
          style: TextStyle(
            color: Color(0xFF666666),
            fontSize: 16,
            fontFamily: 'Pretendard',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
        SizedBox(width: 30), // 옵션들 사이의 여백
      ],
    ):
    Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _selectedOption = value;
              });
              widget.onChanged(value); // 부모에게 선택값 전달
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
              child: _selectedOption == value
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

          SizedBox(height: 80), // 옵션들 사이의 여백
        ]
    );
  }
}
