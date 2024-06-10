import 'package:flutter/material.dart';

class FindMentorWidget extends StatelessWidget {
  const FindMentorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height/5,
      decoration: BoxDecoration(
        color: Colors.amber
      ),
    );
  }
}