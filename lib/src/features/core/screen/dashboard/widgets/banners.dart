import 'package:flutter/material.dart';
import 'package:gt_2/src/constants/image_string.dart';

import '../../../../../constants/colors.dart';

class DashboardBannerWidget extends StatelessWidget {
  const DashboardBannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Column(
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: tCardBgColor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(child: Image(image: AssetImage(images.image1))),
                  Flexible(child: Image(image: AssetImage(images.image1)))
                ],
              ),
              Text("Android for Beginner"),
              Text("Android for Beginner"),
            ],
          ),
        ),
        OutlinedButton(onPressed: (){}, child: Text("View"))
      ],
    ));
  }
}