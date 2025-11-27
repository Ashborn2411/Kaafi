import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/button/customelevatedbutton.dart'
    show CustomElevatedButton;
import '../../../../common/text/titletext.dart' show TitleText;
import '../../../../common/textfield.dart/customtextfield.dart'
    show CustomTextField;
import '../../../../constant/stringconstant.dart';
import '../../../controller/auth/infoprovide/infoprovider.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({super.key, this.isUpdate = false});
  final bool isUpdate;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(InfoPorvideController());

    //function for select date and assign to controller
    void handleDateSelection(BuildContext context) async {
      // Handle date picker and update text field
      final selectedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(DateTime.now().year - 100),
        lastDate: DateTime(DateTime.now().year + 100),
      );

      if (selectedDate != null) {
        final dateonly = selectedDate.toIso8601String().split('T')[0];
        controller.date.text = dateonly;
      }
    }

    return Scaffold(
      appBar: (isUpdate) ? AppBar() : null,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (!isUpdate)
                const SizedBox(height: 60), // 60.heightBox replacement
              //title
              TitleText(
                title: (!isUpdate) ? StringCons.ppyitoprocced : "Edit Profile",
              ),
              const SizedBox(height: 16), // 16.heightBox replacement
              //full name title
              Text(
                StringCons.fullName,
                style: TextStyle(
                  fontWeight: FontWeight.w600, // semiBold equivalent
                  color: const Color(0xFF9E9E9E), // gray500 equivalent
                ),
              ),
              const SizedBox(height: 8), // 8.heightBox replacement
              //full name textfield
              const CustomTextField(
                title: StringCons.fullName,
                prefixIcon: Icons.person,
              ),
              const SizedBox(height: 16), // 16.heightBox replacement
              //phone numver title
              Text(
                StringCons.phoneNumber,
                style: TextStyle(
                  fontWeight: FontWeight.w600, // semiBold equivalent
                  color: const Color(0xFF9E9E9E), // gray500 equivalent
                ),
              ),
              const SizedBox(height: 8), // 8.heightBox replacement
              //phone number textfield
              const CustomTextField(
                title: StringCons.phoneNumber,
                prefixIcon: Icons.phone,
              ),
              const SizedBox(height: 16), // 16.heightBox replacement
              //gender selection box
              Obx(
                () => Row(
                  children: [
                    //male
                    GenderCard(
                      gender: StringCons.male,
                      ontap: () {
                        controller.ismantaped.value =
                            !controller.ismantaped.value;
                        controller.iswomantaped.value = false;
                      },
                      iconData: Icons.man,
                      istaped: controller.ismantaped.value,
                    ),
                    const SizedBox(width: 20), // 20.widthBox replacement
                    //female
                    GenderCard(
                      gender: StringCons.female,
                      ontap: () {
                        controller.iswomantaped.value =
                            !controller.iswomantaped.value;
                        controller.ismantaped.value = false;
                      },
                      iconData: Icons.woman,
                      istaped: controller.iswomantaped.value,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16), // 16.heightBox replacement
              //date of birth title
              Text(
                StringCons.dateOfBirth,
                style: TextStyle(
                  fontWeight: FontWeight.w600, // semiBold equivalent
                  color: const Color(0xFF9E9E9E), // gray500 equivalent
                ),
              ),
              const SizedBox(height: 8), // 8.heightBox replacement
              //date of birth textfeild
              CustomTextField(
                controller: controller.date,
                title: StringCons.enterYourDateOfBirth,
                prefixIcon: Icons.edit_calendar,
                prefixfun: () => handleDateSelection(context),
              ),
              const SizedBox(height: 16.0),
              //complete button
              CustomElevatedButton(
                title: (!isUpdate) ? StringCons.completeProfile : "Update",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GenderCard extends StatelessWidget {
  const GenderCard({
    super.key,
    required this.ontap,
    required this.iconData,
    required this.istaped,
    required this.gender,
  });

  final VoidCallback ontap;
  final IconData iconData;
  final bool istaped;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4), // roundedSM equivalent
              border: Border.all(width: istaped ? 1 : 0.2),
            ),
            height: 70,
            width: 70,
            child: Center(child: Icon(iconData, size: 50)),
          ),
          const SizedBox(height: 4), // 4.heightBox replacement
          Text(
            gender,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: const Color(0xFF616161), // gray700 equivalent
            ),
          ),
        ],
      ),
    );
  }
}
