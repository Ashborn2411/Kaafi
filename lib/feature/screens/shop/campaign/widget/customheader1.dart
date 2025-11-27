import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/button/circulariconbutton.dart';
import '../../../../../common/icon/customimgicon.dart' show Customimageicon;
import '../controller/campaigncontroller.dart' show CustomHeaderController;
import 'campaigntitlebox.dart';

class CustomHeader1 extends StatelessWidget {
  final VoidCallback sort;
  final VoidCallback filter;

  CustomHeader1({super.key, required this.sort, required this.filter});

  final CustomHeaderController controller = Get.put(CustomHeaderController());

  @override
  Widget build(BuildContext context) {
    final List<String> boxtitle = ["Products", "Shops"];
    return Container(
      color: Colors.white,
      height: 45,
      child: Row(
        children: [
          SizedBox(
            height: 40,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: boxtitle.length,
              itemBuilder: (BuildContext context, int index) {
                return Obx(() {
                  bool isSelected = index == controller.selectedIndex.value;
                  return CampaignTitlebox(
                    title: boxtitle[index],
                    controller: controller,
                    isSelected: isSelected,
                    index: index,
                  );
                });
              },
            ),
          ),
          const Spacer(),
          Obx(() {
            return controller.selectedIndex.value == 0
                ? Container(
                    height: 50,
                    padding: const EdgeInsets.only(right: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0),
                          child: Customimageicon(
                            size: 20,
                            ontap: sort,
                            bgcolor: const Color(
                              0xFFEEEEEE,
                            ), // Vx.gray200 replacement
                          ),
                        ),
                        CustomIconButton(
                          icon: Icons.filter_alt,
                          onPressed: filter,
                          size: 20,
                          minimumSize: const Size(20, 20),
                          iconColor: Colors.black, // Vx.black replacement
                          backgroundColor: const Color(
                            0xFFEEEEEE,
                          ), // Vx.gray200 replacement
                        ),
                      ],
                    ),
                  )
                : const SizedBox.shrink();
          }),
        ],
      ),
    );
  }
}
