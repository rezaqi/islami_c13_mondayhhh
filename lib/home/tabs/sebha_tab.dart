import 'package:flutter/material.dart';
import 'package:islami_c13_monday/core/class/images.dart';
import 'package:islami_c13_monday/widget/sebha/circle.dart';
import 'package:islami_c13_monday/widget/sebha/text-page.dart';
import 'package:islami_c13_monday/widget/sebha/title.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int count = 0;
  double i = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AppImages.sebhaBg),
        ),
      ),
      child: Scaffold(
        body: InkWell(
          onTap: () {
            count++;
            i += 0.19;
            setState(() {});
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                AppImages.sebhaBg,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Column(
                children: [
                  CustomTitle(),
                  TextPage(),
                  SizedBox(
                    height: 95,
                  ),
                  CirclePage(
                    i: i,
                    count: count,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
