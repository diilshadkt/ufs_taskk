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
          decoration: const BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(17),
                bottomRight: Radius.circular(17)),
          )),
      ClipRRect(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(17), bottomRight: Radius.circular(17)),
        child: Image.asset(
          "assets/images/img_main.jpeg",
          fit: BoxFit.cover,
          color: Color.fromARGB(255, 20, 69, 150).withOpacity(1.0),
          colorBlendMode: BlendMode.hardLight,
        ),
      ),
      Positioned(
        top: 50,
        left: 15,
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/img_profile.jpeg"),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      txtName,
                      style:
                          TextStyle(color: white, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      txtDate,
                      style: TextStyle(
                          color: white70, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  width: 70,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 4,
                  height: MediaQuery.sizeOf(context).height / 20,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(50))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: white,
                          size: 30,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.alarm,
                          color: white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
      // animation book
      Positioned(
        left: -70,
        bottom: 20,
        child: Image.asset(
          "assets/images/img_animation_book.png",
          width: 200,
        ),
      ),

      /// animation boy
      Positioned(
          bottom: -60,
          left: -40,
          child: Image.asset(
            "assets/images/img_animation_boy.png",
            width: 190,
          )),
      // text
      const Positioned(
        top: 180,
        left: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              txtBoyName,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 17, color: white),
            ),
            Text(txtBoyDescription,
                style: TextStyle(fontWeight: FontWeight.w500, color: white70)),
          ],
        ),
      ),
      Positioned(
        bottom: 20,
        right: 30,
        child: InkWell(
          child: Container(
            width: MediaQuery.sizeOf(context).width / 5,
            height: MediaQuery.sizeOf(context).height / 20,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: white),
              borderRadius: BorderRadius.circular(50),
              gradient: const LinearGradient(
                  end: Alignment.topLeft,
                  begin: Alignment.bottomRight,
                  colors: <Color>[
                    Color.fromARGB(255, 146, 212, 243),
                    Color.fromARGB(255, 235, 233, 233),
                  ]),
            ),
            child: const Center(
              child: Text(
                txtAsk,
                style: TextStyle(
                    fontWeight: FontWeight.w600, fontSize: 16, color: black),
              ),
            ),
          ),
          onTap: () {},
        ),
      )
    ]);
  }
}
