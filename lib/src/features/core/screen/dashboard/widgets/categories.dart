import 'package:flutter/material.dart';
import 'package:gt_2/src/features/core/models/dashboard/categoires_model.dart';

class DashboardCategoriesWidget extends StatelessWidget {
  const DashboardCategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final list = DashboardCategoires.list;
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context,index) => GestureDetector(
          onTap: list[index].onPress,
          child: SizedBox(
            width: 170,
            height: 50,
            child: Row(children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),color: Colors.black
                ),child: Center(
                child: Text(list[index].title,style: Theme.of(context).textTheme.bodySmall,),),
              ),
              SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(list[index].heading),
                  Text(list[index].subHeading),

                ],
              )
            ]),
          ),
        ),
        // children: [
        //   SizedBox(
        //     width: 170,
        //     height: 50,
        //     child: Row(children: [
        //       Container(
        //         width: 45,
        //         height: 45,
        //         decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(10),color: Colors.black
        //         ),child: Center(
        //         child: Text("JS",style: Theme.of(context).textTheme.bodySmall,),),
        //       ),
        //       SizedBox(width: 5),
        //       Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Text("Java Script"),
        //           Text("10 Lessons")
        //         ],
        //       )
        //     ]),
        //   ),
        //   SizedBox(
        //     width: 170,
        //     height: 50,
        //     child: Row(children: [
        //       Container(
        //         width: 45,
        //         height: 45,
        //         decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(10),color: Colors.black
        //         ),child: Center(
        //         child: Text("JS",style: Theme.of(context).textTheme.bodySmall,),),
        //       ),
        //       SizedBox(width: 5),
        //       Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Text("Java Script"),
        //           Text("10 Lessons")
        //         ],
        //       )
        //     ]),
        //   ),
        //   SizedBox(
        //     width: 170,
        //     height: 50,
        //     child: Row(children: [
        //       Container(
        //         width: 45,
        //         height: 45,
        //         decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(10),color: Colors.black
        //         ),child: Center(
        //         child: Text("JS",style: Theme.of(context).textTheme.bodySmall,),),
        //       ),
        //       SizedBox(width: 5),
        //       Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Text("Java Script"),
        //           Text("10 Lessons")
        //         ],
        //       )
        //     ]),
        //   ),
        // ],
      ),
    );
  }
}
