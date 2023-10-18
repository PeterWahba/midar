// import 'package:animate_do/animate_do.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:nb_utils/nb_utils.dart';

// import '../../core.dart';

// class HomeActionBtn extends StatelessWidget {
//   const HomeActionBtn({
//     Key? key,
//     required this.iconName,
//     required this.title,
//     required this.subTitle,
//     required this.pagePath,
//     required this.bgColor,
//     required this.borderColor,
//   }) : super(key: key);

//   final String iconName;
//   final String title;
//   final String subTitle;
//   final String pagePath;
//   final Color bgColor;
//   final Color borderColor;

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: FlipInX(
//         child: Container(
//           height: 120,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SvgPicture.asset(
//                 iconName,
//                 fit: BoxFit.fitWidth,
//                 height: 40,
//               ),
//               2.height,
//               Text(title,
//                   style: GoogleFonts.almarai(
//                     fontSize: 14,
//                     color: kHomeSubTitleBtnFontColor,
//                     fontWeight: FontWeight.w500,
//                   )),
//               2.height,
//               Text(
//                 subTitle,
//                 style: GoogleFonts.almarai(
//                   fontSize: 18,
//                   color: white,
//                   fontWeight: FontWeight.w500,
                  
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             ],
//           ),
//           decoration: BoxDecoration(
//             color: bgColor,
//             border: Border.all(
//               color: borderColor,
//             ),
//           ),
//         ).onTap(() => Get.toNamed(pagePath)),
//       ),
//     );
//   }
// }
