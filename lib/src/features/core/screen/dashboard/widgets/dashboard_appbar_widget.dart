import 'package:flutter/material.dart';
import 'package:gt_2/src/constants/text_strings.dart';
import 'package:gt_2/src/repository/authentication_repository/authentication_repository.dart';

class DashboardAppBarWidget extends StatelessWidget implements PreferredSizeWidget{
  const DashboardAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.menu),
      title: Text(Text_Strings.apple),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        GestureDetector(
          onTap: (){
            AuthenticationRepository.instance.logout();
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
            ),
            child: Icon(Icons.person),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(55);
}
