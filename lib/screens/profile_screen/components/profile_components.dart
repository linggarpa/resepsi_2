import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProfileName extends StatelessWidget {
  const ProfileName({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
}

class ProfileAboutColumn extends StatelessWidget {
  const ProfileAboutColumn(
      {Key? key, required this.title, required this.titleValue})
      : super(key: key);
  final String title, titleValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          titleValue,
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(
          height: 0.2.h,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
        ),
      ],
    );
  }
}
