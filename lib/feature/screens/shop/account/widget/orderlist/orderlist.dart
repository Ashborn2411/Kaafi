import 'package:flutter/material.dart';

import '../../../../../../common/button/circulariconbutton.dart';
import '../../../../../../constant/stringconstant.dart';
import '../../../../../../constant/tabscreen.dart';

class Orderlist extends StatelessWidget {
  const Orderlist({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: StringCons.tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Order List",
            style: TextStyle(
              fontWeight: FontWeight.w600, // semiBold equivalent
            ),
          ),
          actions: [
            CustomIconButton(
              iconColor: Colors.black, // Vx.black replacement
              backgroundColor: Colors.white, // Vx.white replacement
              icon: Icons.question_mark_outlined,
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            physics: const AlwaysScrollableScrollPhysics(),
            isScrollable: true,
            tabs: StringCons.tabs.map((tab) => Tab(text: tab)).toList(),
          ),
        ),
        body: const TabBarView(children: TabScreens.tabScreen),
      ),
    );
  }
}
