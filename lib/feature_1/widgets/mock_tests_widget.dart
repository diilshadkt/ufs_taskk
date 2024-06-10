import 'package:flutter/material.dart';
import 'package:ufs_task/core/constants/text_constants.dart';
import 'package:ufs_task/core/theme/theme.dart';

class MockTestsWidgets extends StatelessWidget {
  final String text;
   const MockTestsWidgets({
    super.key,required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: MediaQuery.sizeOf(context).width / 3,
        height: MediaQuery.sizeOf(context).height / 15,
        decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(width: 1.50, color: grey)),
      ),
      Positioned(
        left: 3,
        top: 3,
        child: Container(
            width: MediaQuery.sizeOf(context).width / 8,
            height: MediaQuery.sizeOf(context).height / 17,
            decoration: BoxDecoration(
                color: grey300, borderRadius: BorderRadius.circular(16)),
            child: Icon(Icons.book_outlined)),
      ),
       Positioned(
        right: 10,
        top: 15,
        child: Text(
          text,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
        ),
      ),
    ]);
  }
}
