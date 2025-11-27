import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../navigation.dart';
import 'widgets/categoriesdetail.dart';
import 'widgets/imgwithtitle.dart';

class VerticalTabController extends GetxController {
  var selectedIndex = 0.obs;

  void changeTabIndex(int index) {
    selectedIndex.value = index;
  }
}

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final VerticalTabController controller = Get.put(VerticalTabController());
    final List<Widget> tabScreens = [
      const CategoriesDetails(),
      const Center(child: Text("Screen 2")),
      const Center(child: Text("Screen 3")),
      const Center(child: Text("Screen 4")),
      const Center(child: Text("Screen 5")),
      const Center(child: Text("Screen 6")),
      const Center(child: Text("Screen 7")),
      const Center(child: Text("Screen 8")),
      const Center(child: Text("Screen 9")),
      const Center(child: Text("Screen 10")),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Categories",
          style: TextStyle(fontWeight: FontWeight.bold),
        ), // .text.bold.make() replacement
      ),
      body: SafeArea(
        child: Row(
          children: [
            // Tab Bar
            SizedBox(
              width: 100,
              child: ListView.separated(
                itemCount: 10,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(height: 10); // 10.heightBox replacement
                },
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      controller.changeTabIndex(index);
                    },
                    child: Obx(
                      () => Container(
                        color: Colors.white, // Vx.white replacement
                        child: Row(
                          children: [
                            AnimatedContainer(
                              clipBehavior: Clip.hardEdge,
                              curve: Curves.linear,
                              duration: const Duration(milliseconds: 300),
                              height: controller.selectedIndex.value == index
                                  ? 120
                                  : 0,
                              width: 5,
                              color: Colors.black,
                            ),
                            Expanded(
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 500),
                                height: 120,
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 5,
                                  vertical: 0,
                                ),
                                child: const ImgWithTitle(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            // Tab Screen
            Expanded(
              child: Obx(() => tabScreens[controller.selectedIndex.value]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNav(applyPop: true),
    );
  }
}
