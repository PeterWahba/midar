// import 'package:flutter/material.dart';

// import '../../core.dart';

// class MainBtn extends StatelessWidget {
//   final String title;

//   const MainBtn({
//     Key? key,
//     required this.title,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 60,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(45),
//         gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [
//             kGradientColorA,
//             kGradientColorB,
//           ],
//         ),
//         boxShadow: [
//           BoxShadow(
//             color: kShadowColor.withOpacity(0.2),
//             blurRadius: 20,
//             offset: const Offset(1, 7), // Shadow position
//           ),
//         ],
//       ),
//       alignment: Alignment.center,
//       child: Text(
//         title,
//         style: kTextStyleEnBtn,
//         textAlign: TextAlign.center,
//       ),
//     );
//   }
// }
