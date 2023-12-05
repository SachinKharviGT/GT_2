import 'package:flutter/material.dart';
import 'package:gt_2/src/utils/theme/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Text("hello",style: Theme.of(context).textTheme.headline2,),
    );
  }
}
