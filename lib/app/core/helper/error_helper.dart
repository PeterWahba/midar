// import 'package:get/get.dart';

// import '../language/app_string.dart';

// class ErrorHelper {
//   static String getErrorMessage(int error) {
//     return _errorMap[error] ?? AppStrings.somethingWentWrong.tr;
//   }

//   static final Map<int, String> _errorMap = {
//     -1: "No Internet Connection",
//     -3: "كلمة المرور ضعيفة",
//     -5: 'هذه السيارة موجودة في طلبك بالفعل',
//     -6: 'لديك حساب بالفعل',
//     -7: 'لا يمكن الغاء طلبك الآن ، برجاء المحاولة لاحقا',
//     -8: 'لا يوجد اتصال بالانترنت',
//     0: "Success",
//     8: "حدث خطأ، برجاء المحاولة مرة أخرى",
//     100: "السيارة محظورة",
//     101: "البريد الإلكتروني أو كلمة المرور غير صحيحة",
//     // 102: "",
//     103: "حدث خطأ اثناء استعادة كلمة المرور برجاء المحاولة مرة اخرى",
//     // 104: "",
//     // 105: "",
//     // 106: "",
//     // 107: "",
//     // 108: "",
//     109:
//         "لقد تخطيت عدد المحاولات المسموحة لاعادة ارسال رمز التحقق، برجاء المحاولة بعد 30 دقيقة",
//     110:
//         "لقد تخطيت عدد المحاولات المسموحة لادخال رمز التحقق، برجاء إعادة ارسال الرمز مرة اخرى",
//     111: "رمز التحقق غير صحيح",
//     112: "لا يمكنك اضافة طلب جديد.لديك بالفعل طلب اضافة سيارة",
//     113: "حدث خطأ اثناء استعادة كلمة المرور برجاء التأكد من صحة البيانات",
//     114: "حدث خطأ اثناء التسجيل، برجاء التأكد من صحة البيانات",
//     115: "حدث خطأ اثناء الإرسال، برجاء المحاولة مرة اخرى",
//     // 116: "",
//     117: "صيغة الملف المرفوع غير مدعومة، برجاء رفع ملف بأحد الصيغ المذكورة",
//     118: "الرقم القومي مسجل بالفعل",
//     119: "البريد الإلكتروني أو رقم الهاتف مسجل بالفعل",
//     120: "لا يوجد حساب مسجل بهذا البريد الالكترونى او رقم الهاتف",
//     129: 'السيارة التي تحاول اضافتها مدرجة من قبل',
//     134: "لا يمكنك التغير الي هذه السيارة",
//     147: "لديك طلب استرداد بالفعل",

//     // ResendRefundVerificationCodeExceedsLimitAttempts
//     151: "لقد تخطيت عدد مرات الإرسال المسموح بها، برجاء المحاولة لاحقًا",

//     // VERIFYREFUNDVERIFICATIONCODEEXCEEDSLIMITATTEMPTS
//     152: "لقد أدخلت رمز تحقق خاطئ أكثر من مرة، برجاء المحاولة لاحقاً ",

//     // REFUNDVERIFICATIONCODEISINVALIDOREXPIRED
//     153: "رمز التحقق خاطئ، برجاء إدخال الرقم الصحيح أو طلب إعادة الإرسال",
//   };
// }