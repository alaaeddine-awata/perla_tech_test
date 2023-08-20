// import 'package:flutter/material.dart';
//
// import '../resources/resources.dart';
//
// class CustomSwitch extends StatelessWidget {
//   final bool value;
//   final void Function(bool)? onChanged;
//   const CustomSwitch({super.key, required this.value, this.onChanged});
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: AppSizeW.s48,
//       child: FittedBox(
//         child: Switch(
//             value: value,
//             activeColor: ThemeColor.secondary(context),
//             inactiveTrackColor: ThemeColor.grey(context),
//             inactiveThumbColor: ThemeColor.darkGrey(context),
//             trackOutlineColor:
//             MaterialStatePropertyAll(ThemeColor.grey(context)),
//             onChanged: onChanged,
//         ),
//       ),
//     );
//   }
// }
