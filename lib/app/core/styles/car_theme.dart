// import 'package:coworkingui/core/my_pref.dart';
// import 'package:coworkingui/core/xcontroller.dart';

// import 'package:extended_image/extended_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:intl/intl.dart';
// import 'package:photo_view/photo_view.dart';
// import 'package:url_launcher/url_launcher.dart';

class AppTheme {
  static const bool isDebug = kDebugMode;
  static const String appName = "Coworking UI";
  static const String appVersion = "v. 1.0.9";

  static String boxName = "storagecoworkinguiBox";

  static String fcmTopicName = "coworkinguitopic";
  static String serverKeyFCM =
      'AAAA9eRty_8:APA91bGToAt_01JkfbmiDsRYElEEw9puiibwShvtZCcryoFDs8SnousKcLZjpo-ufP9U3iF5BuU8KCdtnFiYkoYYQ3jnSMAikEv36ZrukyJMGNmG2t2CMS8mgpgW_6UK8Ze12vCkq0gx';

  static const String webSite = "https://erhacorp.id/";
  static String urlTermService = 'https://coworkingui.id/terms.html';
  static String urlPolicy = 'https://coworkingui.id/policy.html';

  static String contentToShare =
      "coworkingui - Workspace easy booking. \n\nWebsite: https://erhacorp.id @Copyrights 2021, Erhacorp.ID\n";

  static String noWA = "+6281293812628";

  // file uploaded reference
  static String image1 = "Image";
  static String image2 = "Image2";
  static String image3 = "Image3";

  // max comment on post data view
  static int maxViewComment = 5;
  static int pagePaging = 400; // 100 row per page
  static String pageLimit = "0,400"; // limit paging push

  static const double conerRadius = 28.0;
  static const double iconSize = 20.0;

  static const backgroundColorApp = Color(0xfff7f0de);
  static const mainBackgroundColor = Color(0xfff2edef);
  static const softBackgroundColor = Color(0xfff6f5f7);
  static const softBackgroundColor2 = Color(0xfffdfcfc);

  static const iconColor = Color(0xffaf9594);
  static const backgroundColor = Color(0xffe5eff9);
  static const primaryColor = Color(0xFF030356);

  static const primaryDarkColor = Color(0xff297aba);
  static const primaryLightColor = Color(0xff3087bf);

  static const accentColor = Color(0xffd0e6ef);

  static InputDecoration inputForm(final String hint, final Color fillColor) {
    return InputDecoration(
      hintText: hint,
      filled: true,
      fillColor: fillColor,
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(20),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(20),
      ),
      disabledBorder: UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(20),
      ),
      contentPadding: const EdgeInsets.all(15),
      border: InputBorder.none,
    );
  }

  static InputDecoration inputFormAccent(
      final String hint, final Color fillColor, final Color accentColor) {
    return InputDecoration(
      hintText: hint,
      filled: true,
      fillColor: fillColor,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: accentColor),
        borderRadius: BorderRadius.circular(20),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: accentColor),
        borderRadius: BorderRadius.circular(20),
      ),
      disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: accentColor),
        borderRadius: BorderRadius.circular(20),
      ),
      contentPadding: const EdgeInsets.all(15),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: accentColor),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }

  // static String formatCounterNumber(final int number) {
  //   var f = NumberFormat.compact();
  //   //debugdebugPrint(f.format(1230));
  //   return f.format(number);
  // }

  static bool isValidEmail(String email) => RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(email);

  // static String numberFormat(int number) {
  //   final NumberFormat numberFormat =
  //       NumberFormat.currency(symbol: "", decimalDigits: 0);

  //   return numberFormat.format(number);
  // }

  // static String numberFormatDec(double number, int digit) {
  //   final NumberFormat numberFormat =
  //       NumberFormat.currency(symbol: "", decimalDigits: digit);

  //   return numberFormat.format(number);
  // }

  // static createLatLngFromString(String latitude) {
  //   var split = latitude.split(",");
  //   return LatLng(double.parse(split[0]), double.parse(split[1]));
  // }

  // static Widget photoView(photoUrl) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       elevation: 0.2,
  //       systemOverlayStyle: SystemUiOverlayStyle.dark,
  //       leading: BackButton(
  //         color: Colors.black87,
  //         onPressed: () {
  //           Get.back();
  //         },
  //       ),
  //       backgroundColor: MyTheme.mainBackgroundColor,
  //     ),
  //     body: Container(
  //       color: MyTheme.mainBackgroundColor,
  //       padding: const EdgeInsets.all(0.0),
  //       alignment: Alignment.topLeft,
  //       child: PhotoView(
  //         backgroundDecoration: const BoxDecoration(
  //           color: MyTheme.mainBackgroundColor,
  //         ),
  //         loadingBuilder: (context, event) => const Center(
  //           child: SizedBox(
  //             width: 30,
  //             height: 30,
  //             child: Center(
  //               child: CircularProgressIndicator(),
  //             ),
  //           ),
  //         ),
  //         imageProvider: ExtendedNetworkImageProvider(
  //           '$photoUrl',
  //         ),
  //       ),
  //     ),
  //   );
  // }

  static String basename(String path) {
    return path.split('/').last;
  }

  // static sendWA(String phone, String text) {
  //   try {
  //     if (phone.length < 5) {
  //       EasyLoading.showToast("Phone Number invalid...");
  //       return;
  //     }
  //     if (phone.substring(0, 1) == '0') {
  //       phone = "+62${phone.substring(1)}";
  //     }
  //     debugPrint(phone);
  //     XController.openWhatsapp(text: text, number: phone);
  //   } catch (e) {
  //     debugPrint("Error sendWA: $e");
  //   }
  // }

  // static showToast(final String text) {
  //   EasyLoading.showToast(text);
  // }

  static showSnackbar(final String text) {
    ScaffoldMessenger.of(Get.context!)
        .showSnackBar(SnackBar(content: Text(text)));
  }

  static loadingCircular() {
    return Container(
      padding: const EdgeInsets.all(5),
      child: const Center(
        child: SizedBox(
          width: 32,
          height: 32,
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }

  // static int timeStamp(String? date) {
  //   DateTime dateTime = DateTime.now();
  //   if (date != null) {
  //     DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm:ss");
  //     dateTime = dateFormat.parse(date);
  //   }
  //   return dateTime.toLocal().millisecondsSinceEpoch;
  // }

  // static DateTime convertDatetime(String date) {
  //   DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm:ss");
  //   DateTime dateTime = dateFormat.parse(date);
  //   return dateTime.toLocal(); //DateTime.now());
  // }

  // static String formatDateMemberSince(DateTime date) {
  //   var format = DateFormat("MMM yyyy");
  //   //DateFormat('yyyy-MM-dd HH:mm:ss')
  //   return format.format(date.toLocal()); //DateTime.now());
  // }

  // static String formatDateMessage(DateTime date) {
  //   var format = DateFormat('yyyy-MM-dd HH:mm:ss');
  //   return format.format(date.toLocal()); //DateTime.now());
  // }

  // static String formatDateExpired(DateTime date) {
  //   var format = DateFormat('yyyy-MM-dd');
  //   return format.format(date.toLocal()); //DateTime.now());
  // }

  // static String formatDateNow() {
  //   var format = DateFormat('dd/MM/yyyy HH:mm');
  //   return format.format(DateTime.now().toLocal()); //DateTime.now());
  // }

  // static String formatDateReview(DateTime date) {
  //   var format = DateFormat('HH:mm dd/MM/yyyy');
  //   return format.format(date.toLocal()); //DateTime.now());
  // }

  // static String formatDateChat(DateTime date) {
  //   final MyPref myPref = MyPref.to;
  //   var format = DateFormat.yMMMMEEEEd();
  //   var formatHour =
  //       myPref.pLang.val == 'id' ? DateFormat('HH:mm') : DateFormat("hh:mm a");
  //   //DateFormat('yyyy-MM-dd HH:mm:ss')
  //   return "${format.format(date.toLocal())} ${formatHour.format(date.toLocal())}"; //DateTime.now());
  // }

  // static String formatShortDateChat(DateTime date) {
  //   var formatHour = DateFormat('HH:mm');
  //   //DateFormat('yyyy-MM-dd HH:mm:ss')
  //   return formatHour.format(date.toLocal()); //DateTime.now());
  // }

  // static launchUrlGeo(String uurl) async {
  //   try {
  //     debugPrint(uurl);

  //     if (await canLaunchUrl(Uri.parse(uurl))) {
  //       await launchUrl(Uri.parse(uurl));
  //     } else {
  //       throw 'Could not launch $uurl';
  //     }
  //   } catch (e) {
  //     debugPrint("Error launchUrlGeo ${e.toString()}");
  //   }
  // }

  static BoxDecoration boxDecorationGrey = BoxDecoration(
    color: Colors.grey[100],
    borderRadius: BorderRadius.circular(15),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(.5),
        blurRadius: 5.0,
        offset: const Offset(2, 5),
      )
    ],
  );

  static BoxDecoration boxDecorationAccent = BoxDecoration(
    borderRadius: BorderRadius.circular(11),
    color: AppTheme.backgroundColor,
    boxShadow: [
      BoxShadow(
        color: AppTheme.accentColor.withOpacity(.5),
        blurRadius: 5.0,
        offset: const Offset(2, 5),
      )
    ],
  );

  static BoxDecoration boxDecorationWhite = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: AppTheme.accentColor.withOpacity(.5),
        blurRadius: 5.0,
        offset: const Offset(2, 5),
      )
    ],
  );

  static SizedBox sizedBoxLoading = const SizedBox(
    child: Center(
      child: CircularProgressIndicator(),
    ),
  );

  static BoxDecoration gradientDef = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        AppTheme.mainBackgroundColor,
        AppTheme.mainBackgroundColor.withOpacity(.5)
      ],
      stops: const [0.0, 0.5],
    ),
  );

  static BoxDecoration gradientChat = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        AppTheme.mainBackgroundColor.withOpacity(.5),
        AppTheme.mainBackgroundColor.withOpacity(.1)
      ],
      stops: const [0.0, 0.5],
    ),
  );
}

const EdgeInsets padding5 = EdgeInsets.all(5);
const EdgeInsets padding8 = EdgeInsets.all(8);
const double padding20 = 20.0;
const double paddingSize = 25.0;

const TextStyle textBold = TextStyle(fontWeight: FontWeight.bold);
const TextStyle textSmall = TextStyle(fontSize: 11);
const TextStyle textSmallGrey = TextStyle(fontSize: 12, color: Colors.grey);
const TextStyle textMiddle = TextStyle(fontSize: 16);
const TextStyle textNormal = TextStyle(fontSize: 12);

const SizedBox spaceHeight2 = SizedBox(height: 2);
const SizedBox spaceHeight5 = SizedBox(height: 5);
const SizedBox spaceHeight10 = SizedBox(height: 10);
const SizedBox spaceHeight15 = SizedBox(height: 15);
const SizedBox spaceHeight20 = SizedBox(height: 20);
const SizedBox spaceHeight50 = SizedBox(height: 50);

const SizedBox spaceWidth2 = SizedBox(width: 2);
const SizedBox spaceWidth5 = SizedBox(width: 5);
const SizedBox spaceWidth10 = SizedBox(width: 10);
const SizedBox spaceWidth15 = SizedBox(width: 15);
const SizedBox spaceWidth20 = SizedBox(width: 20);
const SizedBox spaceWidth50 = SizedBox(width: 50);

MaterialColor generateMaterialColor(Color color) {
  List strengths = <double>[.05, .1, .2, .3, .4, .5, .6, .7, .8, .9];
  Map<int, Color> swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 0; i < 10; i++) {
    final double ds = strengths[i];
    swatch[(ds * 1000).round()] = Color.fromRGBO(r, g, b, ds);
  }

  return MaterialColor(color.value, swatch);
}
