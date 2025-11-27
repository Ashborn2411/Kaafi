import 'package:flutter/material.dart';

import '../../../../../../main.dart';
import 'widget/searchbar.dart';

AppBar homeAppBar() {
  // Pass the Scaffold key
  return AppBar(
    surfaceTintColor: Colors.white,
    title: const RoundedSearchBar(),
    leading: IconButton(
      icon: const Icon(Icons.menu),
      onPressed: () => homeScaffoldKey.currentState!.openDrawer(),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.notifications_none_outlined),
      ),
    ],
  );
}
