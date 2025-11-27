import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../common/card/banner/homebannercard.dart';
import '../../../../../../common/card/homepagecard.dart' show HomePageCard;
import '../../../../../../common/card/homepagecardlineargradiant.dart';
import '../../../../../../constant/colorconstant.dart';
import '../homebuttons.dart';

class Part1 extends StatelessWidget {
  const Part1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //const HomeFiveButton(),
        Text(
          "Learning that fits",
          style: GoogleFonts.merriweather(
            fontSize: 32,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 20),
        const HomeBannerCard(),
        const SizedBox(height: 10), // 10.heightBox replacement
        const HomePageCardLinearGradiant(
          title: 'Learn more, spend less',
          subtitle: 'save upto 70% on selected courses',
          lineracolor: [Color.fromARGB(255, 213, 195, 225), Color.fromARGB(255, 170, 235, 226)],
        ),
        const SizedBox(height: 10), // 10.heightBox replacement
        const HomePageCard(
          title: 'Trending Courses',
          subtitle: 'Top trending courses this week',
          color: Color(0xFFFFEBEE), // Vx.red100 replacement
        ),
        const SizedBox(height: 10), // 10.heightBox replacement
        const HomePageCard(
          applyrating: true,
          title: 'Popular Courses',
          subtitle: 'Courses You May Like',
          color: Color(0xFFF3E5F5), // Vx.purple100 replacement
        ),
      ],
    );
  }
}
