import 'package:flutter/material.dart';

import '../../../../../constant/imageconstant.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Wishlist")),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: ListView.builder(
            itemCount: 1,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8), // rounded equivalent
                  border: Border.all(width: 0.1),
                ),
                child: Row(
                  children: [
                    const Image(
                      image: AssetImage(ImageCons.watch1),
                      width: 100,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                "Title",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Price",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ),
                            Flexible(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.timer_sharp,
                                        size: 12,
                                        color: Color(
                                          0xFF9E9E9E,
                                        ), // Vx.gray500 replacement
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ), // 4.widthBox replacement
                                      Text(
                                        "Just now",
                                        style: TextStyle(
                                          color: const Color(
                                            0xFF9E9E9E,
                                          ), // Vx.gray500 replacement
                                          fontSize: 8,
                                        ),
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.delete,
                                      size: 20,
                                      color: Color(
                                        0xFF757575,
                                      ), // Vx.gray600 replacement
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
