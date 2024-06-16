import 'package:flutter/material.dart';
import 'package:resepsi_2/constants.dart';
import 'package:sizer/sizer.dart';

class ProfileGridWidget extends StatelessWidget {
  const ProfileGridWidget(
      {Key? key,
      required this.onPress,
      required this.favIcon,
      required this.favIconColor,
      required this.recipeImage,
      required this.recipeName,
      required this.recipeType,
      required this.recipeDuration})
      : super(key: key);
  final VoidCallback onPress;
  final IconData favIcon;
  final Color favIconColor;
  final String recipeImage, recipeName, recipeType, recipeDuration;
  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(left: 1.w, right: 1.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kTextWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: 100.w,
                  height: 21.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: kPrimaryColor,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(recipeImage, fit: BoxFit.cover),
                  ),
                ),
                Container(
                  width: 100.w,
                  height: 21.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black87.withOpacity(0.5),
                  ),
                ),
                Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      width: 9.w,
                      height: 4.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kTextPrimaryColor.withOpacity(0.8),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x00ffffff),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: Icon(
                        favIcon,
                        color: favIconColor,
                      ),
                    ))
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 1.w, right: 1.w, top: 1.h, bottom: 1.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recipeName,
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontSize: 11.sp,
                        ),
                  ),
                  kSizedBox1,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        recipeType,
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      Text(
                        recipeDuration,
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
