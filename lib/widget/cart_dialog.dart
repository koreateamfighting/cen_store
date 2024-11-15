// dialog_utils.dart
import 'package:flutter/material.dart';

Future<void> showCartDialog({
  required BuildContext context,
  double width = 500,
  double height = 610,

}) {
  return showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: '',
    barrierColor: Colors.black.withOpacity(0.5), // 배경 투명도 설정
    transitionDuration: Duration(milliseconds: 200),
    pageBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      return Stack(
        children: [
          Positioned(
            top: 50, // 원하는 위치의 y 좌표
            right: 400, // 원하는 위치의 x 좌표
            child: Material(
              color: Colors.transparent,
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                          Container(
                            width: 20,
                            height: 20,
                            child: Image.asset(
                              'assets/images/bucketIcon.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        SizedBox(width: 8),
                        Text(
                          'Cart',
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 18,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(Icons.close),
                        ),
                      ],
                    ),
                    Container(
                      child: Center(
                        child: Text('Cart Content Here'),
                      ),
                    ) // 동적으로 전달받은 콘텐츠
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    },
  );
}
