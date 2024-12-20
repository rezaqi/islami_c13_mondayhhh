import 'package:flutter/material.dart';
import 'package:islami_c13_monday/core/class/color.dart';
import 'package:islami_c13_monday/core/class/images.dart';

class BackgroundWithItems extends StatelessWidget {
  const BackgroundWithItems({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    double w = MediaQuery.of(context).size.width;

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          alignment: Alignment.topCenter,
          width: double.infinity,
          height: h / 3,
          decoration: BoxDecoration(
              color: AppColor.brown, borderRadius: BorderRadius.circular(40)),
        ),
        Column(
          children: [
            Container(
              width: w / 2.5,
              height: h / 10,
              decoration: BoxDecoration(
                  color: AppColor.secColor,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30))),
            ),
            Container(
              width: double.infinity,
              height: h / 4.1,
              decoration: BoxDecoration(
                  color: AppColor.secColor,
                  borderRadius: BorderRadius.circular(40)),
              child: Container(
                height: 50,
                width: 50,
                // decoration: BoxDecoration(
                //     gradient: LinearGradient(
                //         colors: [Color(0xffB19768), Color(0xff202020)]
                //         )),
              ),
            ),
          ],
        ),
        Positioned(
            left: w / 14,
            top: h / 300,
            child:
                Image.asset(AppImages.left, height: h / 10, fit: BoxFit.cover)),
        Positioned(
            right: w / 14,
            top: h / 300,
            child: Image.asset(AppImages.right,
                height: h / 10, fit: BoxFit.cover)),
        Positioned(
            top: 10,
            left: w / 25,
            child: Text(
              "16 Jul, \n 2024",
              style: TextStyle(
                  color: AppColor.secColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            )),
        Positioned(
            top: 10,
            right: w / 25,
            child: Text(
              "09 Muh,\n 1446",
              style: TextStyle(
                  color: AppColor.secColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            )),
      ],
    );
  }
}
