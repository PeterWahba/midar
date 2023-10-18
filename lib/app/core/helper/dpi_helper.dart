import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

handleFixSize(context) {
  ScreenUtil.init(context, designSize: const Size(390, 896));
}

double fixDpiFont(int size) {
  return ScreenUtil().setSp(size);
}

double fixDpiWidth(double size) {
  return ScreenUtil().setWidth(size);
}

double fixDpiHeight(double size) {
  return ScreenUtil().setHeight(size);
}

double fixDpiScreenWidth() {
  return ScreenUtil().screenWidth;
}
double fixDpiScreenHeight() {
  return ScreenUtil().screenHeight;
}