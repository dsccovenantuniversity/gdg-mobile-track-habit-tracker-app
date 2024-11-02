// import 'package:delightful_toast/delight_toast.dart';
// import 'package:delightful_toast/toast/components/toast_card.dart';
// import 'package:delightful_toast/toast/utils/enums.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:whisper_out/shared/utils/app_color.dart';
// import 'package:whisper_out/shared/utils/text.dart';

// class AppAlert {
//   // Show Toast
//   static void showToast(BuildContext context,
//       {required String message, IconData? icon}) {
//     DelightToastBar(
//       snackbarDuration: const Duration(seconds: 2),
//       autoDismiss: true,
//       position: DelightSnackbarPosition.top,
//       builder: (context) {
//         return ToastCard(
//             color: Theme.of(context).scaffoldBackgroundColor,
//             leading: Icon(
//               icon ?? Icons.error,
//               size: 28,
//               color: blackColor,
//             ),
//             title: AppText(
//               text: message,
//               fontSize: 15.sp,
//               fontWeight: FontWeight.w500,
//             ));
//       },
//     ).show(context);
//   }

//   static Future<void> showCustomDialog({
//     required BuildContext context,
//     required String title,
//     required String content,
//     String? confirmText,
//     String? cancelText,
//     VoidCallback? onConfirm,
//     VoidCallback? onCancel,
//     bool barrierDismissible = false, // Dismiss when tapping outside
//   }) async {
//     await showDialog(
//       context: context,
//       barrierDismissible: barrierDismissible,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text(title),
//           content: Text(content),
//           actions: [
//             if (cancelText != null)
//               TextButton(
//                 style: ButtonStyle(
//                     backgroundColor: WidgetStateProperty.all(purpleColor)),
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                   if (onCancel != null) {
//                     onCancel();
//                   }
//                 },
//                 child: Text(cancelText),
//               ),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(backgroundColor: yellowColor),
//               onPressed: () {
//                 Navigator.of(context).pop();
//                 if (onConfirm != null) {
//                   onConfirm();
//                 }
//               },
//               child: const Text(
//                 "Confirm",
//                 style: TextStyle(color: blackColor),
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   // Show SnackBar
//   // static void showSnackBar(BuildContext context, String message,
//   //     {Duration duration = const Duration(seconds: 3)}) {
//   //   ScaffoldMessenger.of(context).showSnackBar(
//   //     SnackBar(
//   //       content: Text(message),
//   //       duration: duration,
//   //     ),
//   //   );
//   // }
// }
