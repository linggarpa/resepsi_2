import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resepsi_2/constants.dart';
import 'package:resepsi_2/global_widgets/custom_bottombar.dart';
import 'package:resepsi_2/screens/home_screens/home_screen.dart';
import 'package:resepsi_2/screens/profile_screen/profile_screen.dart';
import 'package:sizer/sizer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  static String routeName = 'MainScreen';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    PageController myPage = PageController(initialPage: _selectedIndex);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          width: 100.w,
          height: SizerUtil.deviceType == DeviceType.tablet ? 11.h : 8.h,
          margin: EdgeInsets.only(left: 3.w, right: 3.w),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButtomBar(
                onPress: () {
                  setState(() {
                    _selectedIndex = 0;
                    myPage.jumpToPage(_selectedIndex);
                  });
                },
                iconData: Icons.home_filled,
                iconColor:
                    _selectedIndex == 0 ? kPrimaryColor : kTextSecondaryColor,
                title: 'Home',
                textColor:
                    _selectedIndex == 0 ? kPrimaryColor : kTextSecondaryColor,
              ),
              CustomButtomBar(
                onPress: () {
                  setState(() {
                    _selectedIndex = 1;
                    myPage.jumpToPage(_selectedIndex);
                  });
                },
                iconData: Icons.file_open,
                iconColor:
                    _selectedIndex == 1 ? kPrimaryColor : kTextSecondaryColor,
                title: 'Upload',
                textColor:
                    _selectedIndex == 1 ? kPrimaryColor : kTextSecondaryColor,
              ),
              CustomButtomBar(
                onPress: () {
                  setState(() {
                    _selectedIndex = 2;
                    myPage.jumpToPage(_selectedIndex);
                  });
                },
                iconData: Icons.notifications,
                iconColor:
                    _selectedIndex == 2 ? kPrimaryColor : kTextSecondaryColor,
                title: 'Notification',
                textColor:
                    _selectedIndex == 2 ? kPrimaryColor : kTextSecondaryColor,
              ),
              CustomButtomBar(
                onPress: () {
                  setState(() {
                    _selectedIndex = 3;
                    myPage.jumpToPage(_selectedIndex);
                  });
                },
                iconData: Icons.person,
                iconColor:
                    _selectedIndex == 3 ? kPrimaryColor : kTextSecondaryColor,
                title: 'Profile',
                textColor:
                    _selectedIndex == 3 ? kPrimaryColor : kTextSecondaryColor,
              )
            ],
          ),
        ),
      ),
      body: PageView(
        controller: myPage,
        physics: const NeverScrollableScrollPhysics(),
        children: const <Widget>[
          HomeScreen(),
          Center(
            child: Text('Upload'),
          ),
          Center(
            child: Text('Notification'),
          ),
          // MyProfile page
          MyProfileScreen(),
        ],
      ),
    );
  }
}
