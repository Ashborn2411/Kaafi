import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoundedSearchBar extends StatelessWidget {
  const RoundedSearchBar({
    super.key,
     this.title="Search here.....",
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SearchController());
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            color: Colors.grey,
            size: 20,
          ),
          const SizedBox(width: 5),
          Expanded(
            child: TextField(
              controller: controller.textController,
              decoration:  InputDecoration(
                  hintText: title,
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.only(bottom: 10)),
              onSubmitted: (text) => controller.search(text),
            ),
          ),
        ],
      ),
    ); // Use VelocityX for border radius
  }
}

class SearchController extends GetxController {
  static SearchController get instance => Get.find();
  final TextEditingController textController = TextEditingController();

  void search(String text) {
    // Your search logic here
    if (kDebugMode) {
      print('Searching for: $text');
    }
    textController.clear(); // Clear search text after submission
  }
}
