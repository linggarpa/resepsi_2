import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resepsi_2/constants.dart';
import 'package:resepsi_2/screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:resepsi_2/screens/home_screens/home_screen.dart';
import 'package:resepsi_2/screens/main_screen/main_screen.dart';
import 'package:resepsi_2/screens/new_password_screen/new_password_screen.dart';
import 'package:resepsi_2/screens/otp_screen/otp_screen.dart';
import 'package:resepsi_2/screens/profile_screen/my_recipes_detail/my_homerecipe_detail.dart';
import 'package:resepsi_2/screens/profile_screen/my_recipes_detail/my_likerecipe_detail.dart';
import 'package:resepsi_2/screens/profile_screen/my_recipes_detail/my_recipe_detail.dart';
import 'package:resepsi_2/screens/profile_screen/profile_screen.dart';
import 'package:sizer/sizer.dart';
import 'screens/intro_screen/intro_screen.dart';
import 'screens/sign_in_screen/sign_in_screen.dart';
import 'screens/sign_up_screen/sign_up_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Resepsi',
          theme: ThemeData.light().copyWith(
              scaffoldBackgroundColor: kScaffoldColor,
              appBarTheme: AppBarTheme(
                color: kScaffoldColor,
                elevation: 0,
                iconTheme: IconThemeData(
                  color: kTextPrimaryColor,
                  size:
                      SizerUtil.deviceType == DeviceType.tablet ? 20.sp : 22.sp,
                ),
                actionsIconTheme: IconThemeData(
                  color: kTextPrimaryColor,
                  size:
                      SizerUtil.deviceType == DeviceType.tablet ? 20.sp : 22.sp,
                ),
              ),
              textTheme: GoogleFonts.latoTextTheme().copyWith(
                headline4: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: kTextPrimaryColor,
                  fontSize:
                      SizerUtil.deviceType == DeviceType.tablet ? 18.sp : 20.sp,
                ),
                headline5: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: kTextPrimaryColor,
                  fontSize: 18.sp,
                ),
                headline6: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: kTextPrimaryColor,
                  fontSize:
                      SizerUtil.deviceType == DeviceType.tablet ? 16.sp : 14.sp,
                ),
                subtitle1: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: kTextSecondaryColor,
                  fontSize: 13.sp,
                ),
                subtitle2: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: kTextSecondaryColor,
                  fontSize:
                      SizerUtil.deviceType == DeviceType.tablet ? 15.sp : 10.sp,
                ),
                button: TextStyle(
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.sp,
                  color: kTextWhiteColor,
                ),
              ),
              inputDecorationTheme: InputDecorationTheme(
                floatingLabelStyle: const TextStyle(color: kTextPrimaryColor),
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                floatingLabelAlignment: FloatingLabelAlignment.center,
                labelStyle: inputTextHintStyle.copyWith(
                  color: kTextSecondaryColor,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: kTextSecondaryColor, style: BorderStyle.solid),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                      color: kTextSecondaryColor.withOpacity(0.6),
                      style: BorderStyle.solid),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: kPrimaryColor, style: BorderStyle.solid),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: kErrorBorderColor, style: BorderStyle.solid),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: kErrorBorderColor, style: BorderStyle.solid),
                ),
              ),
              bottomAppBarTheme: const BottomAppBarTheme(
                shape: CircularNotchedRectangle(),
              )),
          initialRoute: IntroScreen.routeName,
          routes: <String, WidgetBuilder>{
            IntroScreen.routeName: (context) => IntroScreen(),
            SignInScreen.routeName: (context) => SignInScreen(),
            ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
            SignUpScreen.routeName: (context) => SignUpScreen(),
            OtpScreen.routeName: (context) => OtpScreen(),
            NewPasswordScreen.routeName: (context) => NewPasswordScreen(),
            MainScreen.routeName: (context) => MainScreen(),
            HomeScreen.routeName: (context) => HomeScreen(),
            MyHomeDetailScreen.routeName: (context) => MyHomeDetailScreen(),
            MyProfileScreen.routeName: (context) => MyProfileScreen(),
            MyRecipeDetailScreen.routeName: (context) => MyRecipeDetailScreen(),
            MyLikeDetailScreen.routeName: (context) => MyLikeDetailScreen(),
          },
        );
      },
    );
  }
}
