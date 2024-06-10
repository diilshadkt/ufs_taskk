import 'package:flutter/material.dart';
import 'package:ufs_task/core/constants/text_constants.dart';
import 'package:ufs_task/core/theme/theme.dart';
import 'package:ufs_task/feature_1/widgets/main_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 246, 245),
      body: Column(
        children: [
          MainContainerWidget(),
          //text recently played
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 20, bottom: 7),
                child: Text(
                  txtRecentlyPlayed,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height / 9.50,
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(width: 1.5, color: grey)),
              child: Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                    child: Stack(children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width / 3.80,
                        height: MediaQuery.sizeOf(context).height / 7,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/img_nature.jpeg"))),
                      ),
                      Positioned(
                        top: 22,
                        left: 38,
                        child: Image.asset(
                          "assets/images/img_triangle-removebg-preview.png",
                          width: 27,
                        ),
                      )
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 6, top: 8, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          txtRecentlyDescription,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          txtTime,
                          style: TextStyle(fontSize: 13, color: grey),
                        )
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/icons/loading.png",
                    width: 40,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 17,
          ),
          //Explore courses button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height / 14,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        txtButton,
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                            color: white),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: white,
                        size: 28,
                      )
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
