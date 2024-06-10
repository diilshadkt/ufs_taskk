import 'package:flutter/material.dart';
import 'package:ufs_task/core/constants/text_constants.dart';
import 'package:ufs_task/core/theme/theme.dart';

class CoursesListviewWidget extends StatelessWidget {
  const CoursesListviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        height: 300,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            // shrinkWrap: true,
            itemBuilder: (context, index) {
              return Stack(children: [
                Container(
                  width: MediaQuery.sizeOf(context).width / 2,
                  height: MediaQuery.sizeOf(context).height / 2.60,
                  decoration: BoxDecoration(
                      color: white, borderRadius: BorderRadius.circular(15)),
                ),
                Positioned(
                  top: 5,
                  left: 6,
                  child: Container(
                    width: MediaQuery.sizeOf(context).width / 2.14,
                    height: MediaQuery.sizeOf(context).height / 7,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/img_smile_men.avif"),
                            fit: BoxFit.cover)),
                  ),
                ),
                Positioned(
                  top: 130,
                  left: 10,
                  child: Text(
                    txtDescriptionPopularCourse,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Positioned(
                  bottom: 60,
                  left: 10,
                  child: const Row(
                    children: [
                      Icon(
                        Icons.batch_prediction_outlined,
                        color: grey,
                      ),
                      Text(
                        txt54,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: grey),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.timelapse,
                        color: grey,
                        size: 20,
                      ),
                      Text(
                        txt48hrs,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: grey),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 17,
                  child: Row(
                    children: [
                      Text(
                        txt5000,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w800),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Text(txtRating)
                    ],
                  ),
                )
              ]);
            },
            separatorBuilder: (context, index) => const SizedBox(
                  width: 10,
                ),
            itemCount: 4),
      ),
    );
  }
}











// import 'package:flutter/material.dart';

// class CoursesListviewWidget extends StatelessWidget {
//   const CoursesListviewWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.separated(
//         scrollDirection: Axis.horizontal,
//         shrinkWrap: true,
//         itemBuilder: (context, index) {
//           return Container(
//             height: 100,
//             width: 230,
//             decoration: BoxDecoration(
//               border: const Border(
//                   bottom: BorderSide(width: 0.4),
//                   top: BorderSide(width: 0.4),
//                   left: BorderSide(width: 0.4),
//                   right: BorderSide(width: 0.4)),
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     decoration:
//                         BoxDecoration(borderRadius: BorderRadius.circular(10)),
//                     child: Image.asset(
//                       'assets/images/depositphotos_133078960-stock-photo-cute-smiling-boy.jpg',
//                       width: 220,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 7,
//                   ),
//                   const Text(
//                     "OET Beginner Special\nclass and Preperation\nTips",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   const Row(
//                     children: [
//                       Icon(Icons.battery_5_bar_rounded),
//                       Text('54'),
//                       SizedBox(
//                         width: 20,
//                       ),
//                       Icon(Icons.lock_clock),
//                       Text('48 Hrs'),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   const Row(
//                     children: [
//                       Icon(Icons.currency_rupee_sharp),
//                       Text("5000"),
//                       SizedBox(
//                         width: 110,
//                       ),
//                       Text("⭐ 4.5")
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           );
//         },
//         separatorBuilder: (context, index) => const SizedBox(
//               width: 10,
//             ),
//         itemCount: 5);
//   }
// }

