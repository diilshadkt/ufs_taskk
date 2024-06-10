import 'package:flutter/material.dart';
import 'package:ufs_task/feature_1/widgets/main_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        children: [
          MainContainerWidget(),
        ],
      ),
    );
  }
}
