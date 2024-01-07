import 'package:flutter/material.dart';
import 'package:gt_2/src/constants/image_string.dart';
import 'package:gt_2/src/features/core/models/dashboard/top_course_model.dart';

class DashboardTopCourseWidget extends StatelessWidget {
  const DashboardTopCourseWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final list = DashboardTopCourseModel.list;
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context,index) => SizedBox(
          width: 320,
          height: 200,
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Flexible(child: Text(list[index].title)),
                    Flexible(child: Image(image: AssetImage(images.image1),height: 110 ,))
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(shape: CircleBorder()),
                        child: Icon(Icons.play_arrow)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(list[index].heading,style: Theme.of(context).textTheme.headline6,),
                        Text(list[index].subHeading,style: Theme.of(context).textTheme.headline6,),

                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),

      ),
    );
  }
}

//dart pub global run flutterfire_cli:flutterfire configure

// web       1:1056996755892:web:8870c26d227e584f644ae1
// android   1:1056996755892:android:365ca600568a9dca644ae1
// ios       1:1056996755892:ios:18745f93329f6899644ae1
// macos     1:1056996755892:ios:94430e0a1c4efa70644ae1
//





