import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/stringconstant.dart';
import '../../feature/controller/auth/register/registercontroller.dart';

class TermAndCondition extends StatelessWidget {
  const TermAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterController());
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(width: 10), // 10.widthBox replacement
        Obx(
          () => SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(
              activeColor: Colors.black, // Vx.black replacement
              value: controller.checked.value,
              onChanged: (v) =>
                  controller.checked.value = !controller.checked.value,
            ),
          ),
        ),
        const SizedBox(width: 10), // 10.widthBox replacement
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                customtexspan(context, "${StringCons.agree} "),
                TextSpan(
                  text: "${StringCons.privacy} ",
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                    fontWeightDelta: 1,
                    decoration: TextDecoration.underline,
                  ),
                ),
                customtexspan(context, "${StringCons.and} "),
                TextSpan(
                  text: "${StringCons.termscondition} ",
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                    fontWeightDelta: 1,
                    decoration: TextDecoration.underline,
                  ),
                ),
                customtexspan(context, "${StringCons.ofevaly}."),
              ],
            ),
          ),
        ),
      ],
    );
  }

  TextSpan customtexspan(BuildContext context, String title) {
    return TextSpan(
      text: title,
      style: Theme.of(context).textTheme.bodySmall!.apply(
        fontSizeDelta: 2,
        color: const Color(0xFF9E9E9E), // Vx.gray500 replacement
        fontWeightDelta: 1,
      ),
    );
  }
}
