// purchase_dropdownvalue.dart
import 'package:flutter/material.dart';
import 'package:cen_store_webpage/constants/app_constants.dart';


class PurchaseDropDown extends StatefulWidget {
  final double containerWidth;
  final double containerHeight;
  String? selectedTarget;
  final List<String>  itemList;



  PurchaseDropDown({
    required this.containerWidth,
    required this.containerHeight,
    required this.selectedTarget,
    required this.itemList
  });

  @override
  _PurchaseWidgetState createState() =>
      _PurchaseWidgetState();
}


class _PurchaseWidgetState
    extends State<PurchaseDropDown> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.containerWidth,
      height: widget.containerHeight,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.grey),
      ),
      child:  DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: widget.selectedTarget,
          items: widget.itemList.map((String country) {
            return DropdownMenuItem<String>(
              value: country,
              child: Text(country),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              widget.selectedTarget = newValue!;
            });
          },
          dropdownColor: Colors.white,
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      )
          ,
    );
  }
}
