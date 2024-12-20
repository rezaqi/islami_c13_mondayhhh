import 'package:flutter/material.dart';
import 'package:islami_c13_monday/widget/backgroumd_items.dart';

class TimeTab extends StatelessWidget {
  const TimeTab({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    double w = MediaQuery.of(context).size.width;
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [BackgroundWithItems()],
      ),
    );
  }
}
