import 'package:flutter/material.dart';
import 'package:resepsi_2/constants.dart';

class CustomButtomBar extends StatelessWidget {
  const CustomButtomBar(
      {Key? key,
      required this.onPress,
      required this.title,
      required this.iconColor,
      required this.iconData,
      required this.textColor})
      : super(key: key);
  final VoidCallback onPress;
  final String title;
  final Color iconColor;
  final Color textColor;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: iconColor,
          ),
          kSizedBox1,
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: textColor),
          )
        ],
      ),
    );
  }
}
