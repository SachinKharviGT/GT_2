import 'package:flutter/material.dart';
import 'package:gt_2/src/constants/text_strings.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
            left: BorderSide(
              width: 2,
            )
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(Text_Strings.dashboard_search,style: Theme.of(context).textTheme.headline4!.apply(color: Colors.grey.shade200)),
          Icon(Icons.mic)
        ],
      ),
    );
  }
}