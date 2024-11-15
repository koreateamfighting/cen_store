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



class PurchasePage extends StatefulWidget {
  @override
  _PurchasePageState createState() => _PurchasePageState();
}

class _PurchasePageState extends State<PurchasePage> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: PaymentLeftView(),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    child: PaymentRightView(),
                  )
                ],
              ),
              BottomBarView(),
            ],
          )),
        ),
      ),
    );
  }
}
