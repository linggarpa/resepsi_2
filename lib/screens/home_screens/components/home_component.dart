import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeCategoryBtn extends StatelessWidget {
  const HomeCategoryBtn(
      {Key? key,
      required this.onTap,
      required this.bgColor,
      required this.titleColor,
      required this.title})
      : super(key: key);

  final VoidCallback onTap;
  final Color bgColor;
  final Color titleColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 20.w,
        height: 8.h,
        margin: EdgeInsets.only(right: 2.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: bgColor,
        ),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: titleColor,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.0,
                ),
          ),
        ),
      ),
    );
  }
}
