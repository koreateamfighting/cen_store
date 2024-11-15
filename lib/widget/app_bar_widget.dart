// widget/app_bar_widget.dart
import 'package:cen_store_webpage/screen/my_page.dart';
import 'package:cen_store_webpage/widget/cart_dialog.dart';
import 'package:flutter/material.dart';
import 'package:cen_store_webpage/widget/hover_icon_with_tooltip.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(55);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 360),
          Image.asset('assets/images/cenCloudLogo.png', height: 40),
          SizedBox(width: 810),
          Row(
            children: [
              HoverIconWithTooltip(
                defaultIcon: 'assets/images/myAssetWhiteIcon.png',
                hoverIcon: 'assets/images/myAssetWhiteIcon.png',
                tooltip: 'MyAsset',
                onPressed: () {},
              ),
              HoverIconWithTooltip(
                defaultIcon: 'assets/images/bucketIcon.png',
                hoverIcon: 'assets/images/bucketHoverIcon.png',
                tooltip: 'Cart',
                onPressed: () {
                  showCartDialog(
                    context: context,
                  );
                },
              ),
              HoverIconWithTooltip(
                defaultIcon: 'assets/images/favoriteIcon.png',
                hoverIcon: 'assets/images/favoriteHoverIcon.png',
                tooltip: 'Saved',
                onPressed: () {},
              ),
              HoverIconWithTooltip(
                defaultIcon: 'assets/images/mypageIcon.png',
                hoverIcon: 'assets/images/mypageHoverIcon.png',
                tooltip: 'MyPage',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyPage(),
                    ),
                  );
                },
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
