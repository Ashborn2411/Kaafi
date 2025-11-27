import 'package:flutter/material.dart';

import '../../../../../common/card/list/companycardlist.dart' show ShopCardList;
import 'titlesubtitlesubtitlebutton.dart';

class ShopCardlistTitle extends StatelessWidget {
  const ShopCardlistTitle({
    super.key,
    this.title = 'Top Rated Shops',
    this.subtitle = 'Loved by Customers Like You',
    this.color = const Color(0xFF8E24AA), // Vx.purple600 replacement
    this.autoscroll = false,
    required this.ontap,
  });
  final String title;
  final String subtitle;
  final Color color;
  final bool autoscroll;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(right: 10),
            child: TitleSubtitleandButton(
              title: title,
              subtitle: subtitle,
              ontap: ontap, // Fixed: removed unnecessary () =>
              color: color,
            ),
          ), // .box.padding().make() replacement
          const SizedBox(height: 20), // 20.heightBox replacement
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ShopCardList(autoscroll: autoscroll),
          ),
        ],
      ),
    ); // .box.padding().make() replacement
  }
}
