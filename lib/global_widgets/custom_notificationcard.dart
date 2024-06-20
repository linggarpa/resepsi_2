import 'package:flutter/material.dart';
import 'package:resepsi_2/constants.dart';
import 'package:sizer/sizer.dart';

class CustomNotificationCard extends StatefulWidget {
  const CustomNotificationCard(
      {Key? key,
      required this.imgSrc,
      required this.nameTitle,
      required this.duration})
      : super(key: key);
  final String imgSrc;
  final String nameTitle;
  final String duration;

  @override
  State<CustomNotificationCard> createState() => _CustomNotificationCardState();
}

class _CustomNotificationCardState extends State<CustomNotificationCard> {
  bool isFollowing = false;
  // Status awal apakah di-follow atau tidak
  void _toggleFollow() {
    setState(() {
      isFollowing = !isFollowing; // Mengubah status follow/unfollow
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 13.h,
      padding: EdgeInsets.symmetric(horizontal: 1.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 10.w,
            height: 10.w,
            padding: EdgeInsets.all(1.w),
            decoration: BoxDecoration(
              color: kErrorBorderColor,
              borderRadius: BorderRadius.circular(40),
            ),
            child: ClipOval(
              child: SizedBox.fromSize(
                size: Size.fromRadius(40),
                child: Image.asset(widget.imgSrc, fit: BoxFit.cover),
              ),
            ),
          ),
          SizedBox(width: 4.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.nameTitle,
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(height: 1.w),
                Row(
                  children: [
                    Text(
                      'Mulai mengikuti anda.',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      widget.duration,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ],
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed:
                _toggleFollow, // Memanggil fungsi toggle follow saat tombol diklik
            child: Text(isFollowing ? 'Unfollow' : 'Follow'),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: isFollowing ? Colors.red : kPrimaryColor,
              textStyle: TextStyle(
                fontSize: 10.sp,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 4.w,
                vertical: 1.5.h,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
