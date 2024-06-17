import 'package:flutter/material.dart';
import 'package:resepsi_2/constants.dart';
import 'package:sizer/sizer.dart';

class HomeGridWidget extends StatelessWidget {
  const HomeGridWidget(
      {super.key,
      required this.onPress,
      required this.chefName,
      required this.chefImg,
      required this.favIcon,
      required this.favIconColor,
      required this.recipeImage,
      required this.recipeName,
      required this.recipeType,
      required this.recipeDuration});
  final VoidCallback onPress;
  final String chefName;
  final String chefImg;
  final IconData favIcon;
  final Color favIconColor;
  final String recipeImage, recipeName, recipeType, recipeDuration;

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kTextWhiteColor,
        ),
        margin: EdgeInsets.only(left: 1.w, right: 1.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 8.w / 2, // Menggunakan 15.w sebagai diameter
                  backgroundColor: kErrorBorderColor,
                  child: ClipOval(
                    child: Image.asset(
                      chefImg,
                      width: 15.w,
                      height: 15.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  chefName,
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: kPrimaryColor, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            kSizedBox2,
            Stack(
              children: [
                Container(
                  width: 100.w,
                  height: 21.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      recipeImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 100.w,
                  height: 21.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black87.withOpacity(0.5)),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    width: 9.w,
                    height: 4.h,
                    decoration: BoxDecoration(
                      color: const Color(0xff61666e).withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x0ffffff),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: Icon(
                      favIcon,
                      color: favIconColor,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 1.w, right: 1.w, bottom: 1.h, top: 1.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kSizedBox2,
                  Text(
                    recipeName,
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.fade,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 13.sp,
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
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
