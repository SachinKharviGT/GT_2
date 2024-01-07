import 'package:flutter/material.dart';
import 'package:gt_2/src/constants/colors.dart';
import 'package:gt_2/src/constants/image_string.dart';
import 'package:gt_2/src/constants/text_strings.dart';
import 'package:gt_2/src/features/core/screen/dashboard/widgets/banners.dart';
import 'package:gt_2/src/features/core/screen/dashboard/widgets/categories.dart';
import 'package:gt_2/src/features/core/screen/dashboard/widgets/dashboard_appbar_widget.dart';
import 'package:gt_2/src/features/core/screen/dashboard/widgets/search_box.dart';
import 'package:gt_2/src/features/core/screen/dashboard/widgets/top_course.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DashboardAppBarWidget(),
      body: Container(
        child: Column(
          children: [
            Text(Text_Strings.dashboardTxt,style: Theme.of(context).textTheme.headline4,),
            Text(Text_Strings.dashboard_content,style: Theme.of(context).textTheme.headline6),
            SizedBox(height: 30,),
            //searchBox
            SearchBox(),
            SizedBox(height: 30,),

            //categoirs//
            DashboardCategoriesWidget(),
            SizedBox(height: 30),

            //Banner
            DashboardBannerWidget(),

            Text("Top Course",style: Theme.of(context).textTheme.headline3,),

            //Top Course
            DashboardTopCourseWidget()
          ],
        ),
      ),
    );
  }
}

