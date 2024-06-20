import 'package:flutter/material.dart';
import 'package:resepsi_2/constants.dart';
import 'package:resepsi_2/global_widgets/custom_notificationcard.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);
  static String routeName = 'NotificationScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: screensDefaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kSizedBox2,
              kSizedBox2,
              Text(
                'Today',
                style: Theme.of(context).textTheme.headline4,
              ),
              kSizedBox2,
              kSizedBox2,
              CustomNotificationCard(
                  imgSrc: 'assets/images/sohe.jpg',
                  nameTitle: 'Han So Hee',
                  duration: '20 menit'),
              CustomNotificationCard(
                  imgSrc: 'assets/images/gyj.jpg',
                  nameTitle: 'Go Yoon Jung',
                  duration: '40 menit'),
              CustomNotificationCard(
                  imgSrc: 'assets/images/karin.jpg',
                  nameTitle: 'Fujiyoshi Karin',
                  duration: '1 jam'),
            ],
          ),
        ),
      ),
    );
  }
}
