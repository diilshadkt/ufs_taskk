import 'package:flutter/material.dart';
import 'package:ufs_task/core/constants/text_constants.dart';
import 'package:ufs_task/core/theme/theme.dart';

class MainContainerWidget extends StatelessWidget {
  const MainContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height / 3,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(17),
                bottomRight: Radius.circular(17)),
          )),
      ClipRRect(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(17), bottomRight: Radius.circular(17)),
        child: Image.asset(
          "assets/images/img_main.jpeg",
          fit: BoxFit.cover,
          color: Color(0xff0d69ff).withOpacity(1.0),
          colorBlendMode: BlendMode.hardLight,
        ),
      ),
      Positioned(
        top: 30,
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/img_profile.jpeg"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        txtName,
                        style: TextStyle(
                            color: textColorA, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        txtDate,
                        style: TextStyle(
                            color: white70, fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      )
    ]);
  }
}
