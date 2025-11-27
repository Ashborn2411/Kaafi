import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      "idea.png",
      "chatbot.png",
      "info.png",
      "social.png",
      "webinar.png",
      "shop.png",
    ];
    List<String> listName = [
      "Suggestion",
      "Chat with Baba",
      "krishi updates for you",
      "social media",
      "Krishi knowledge",
      "Dokan",
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "DashBoard",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Dashboard_top(),
          Align(
            alignment: AlignmentGeometry.centerLeft,
            child: Text(
              "Services",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ).paddingSymmetric(horizontal: 12),
          GridView.count(
            crossAxisCount: 3,
            padding: EdgeInsets.all(16),
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(6, (index) {
              return InkWell(
                onTap: () => print("hello"),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 91, 245, 103),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/${list[index]}',
                        width: 48,
                        height: 48,
                        fit: BoxFit.contain,
                      ),
                      Center(
                        child: Text.rich(
                          TextSpan(text: listName[index]),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade800,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

class Dashboard_top extends StatelessWidget {
  const Dashboard_top({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        height: 180,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 91, 245, 103),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.black12),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Analatics",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const Text.rich(
              TextSpan(
                text:
                    "The extended dry forecast demands immediate irrigation for shallow-rooted crops and new plantings. Delay any non-essential field work to conserve soil moisture for established crops.",
              ),
              maxLines: 4,
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
