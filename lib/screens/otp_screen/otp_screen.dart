import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resepsi_2/constants.dart';
import 'package:resepsi_2/global_widgets/custom_btn.dart';
import 'package:resepsi_2/screens/new_password_screen/new_password_screen.dart';
import 'package:sizer/sizer.dart';
import 'dart:async';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);
  static String routeName = 'OtpScreen';

  @override
  State<OtpScreen> createState() => _OtpScreen();
}

class _OtpScreen extends State<OtpScreen> {
  final _formKey = GlobalKey<FormState>();

  late FocusNode _node2;
  late FocusNode _node3;
  late FocusNode _node4;

  final TextEditingController _node1Controller = TextEditingController();
  final TextEditingController _node2Controller = TextEditingController();
  final TextEditingController _node3Controller = TextEditingController();
  final TextEditingController _node4Controller = TextEditingController();

  int duration = 60;
  bool _hasError = false;
  String _errorMessage = '';
  Timer? _errorTimer;

  @override
  void initState() {
    super.initState();
    _node2 = FocusNode();
    _node3 = FocusNode();
    _node4 = FocusNode();
  }

  @override
  void dispose() {
    _node2.dispose();
    _node3.dispose();
    _node4.dispose();
    _node1Controller.dispose();
    _node2Controller.dispose();
    _node3Controller.dispose();
    _node4Controller.dispose();
    _errorTimer?.cancel();
    super.dispose();
  }

  void nextNode({String? value, FocusNode? focusNode}) {
    if (value!.length == 1) {
      focusNode!.requestFocus();
    }
  }

  void _validateAndNavigate() {
    setState(() {
      _hasError = false;
      _errorMessage = '';
    });

    _errorTimer?.cancel(); // Cancel previous timer if any

    // Check if any OTP field is empty
    if (_node1Controller.text.isEmpty ||
        _node2Controller.text.isEmpty ||
        _node3Controller.text.isEmpty ||
        _node4Controller.text.isEmpty) {
      setState(() {
        _hasError = true;
        _errorMessage = 'Please enter the complete OTP code.';
        // Clear all OTP fields
        _node1Controller.clear();
        _node2Controller.clear();
        _node3Controller.clear();
        _node4Controller.clear();
      });

      // Schedule to hide the error message and clear the fields after 2 seconds
      _errorTimer = Timer(const Duration(seconds: 2), () {
        setState(() {
          _hasError = false;
          _errorMessage = '';
        });
      });
    } else {
      Navigator.pushNamed(context, NewPasswordScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: screensDefaultPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Check your email',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline4,
              ),
              kSizedBox1,
              Text(
                'We have sent the code to your email',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              // Display the error message if there is an error
              if (_hasError)
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    _errorMessage,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              kSizedBox2,
              kSizedBox2,
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildNode1Box(),
                        buildNode2Box(),
                        buildNode3Box(),
                        buildNode4Box(),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Resend code in: ',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  TweenAnimationBuilder(
                    tween: IntTween(begin: duration, end: 0),
                    duration: Duration(seconds: duration),
                    builder: (context, int value, child) => Text(
                      "${value.toInt()}",
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                ],
              ),
              kSizedBox2,
              kSizedBox2,
              CustomBtn(
                onPress: _validateAndNavigate,
                title: 'Verify',
              ),
              kSizedBox2,
              kSizedBox2,
              CustomIconBtn(
                onPress: () {
                  // resend code request
                },
                title: 'Resent',
                icon: 'assets/icons/send.svg',
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox buildNode1Box() {
    return SizedBox(
      width: 20.w,
      height: 10.h,
      child: TextFormField(
        controller: _node1Controller,
        autofocus: true,
        textInputAction: TextInputAction.next,
        keyboardAppearance: Brightness.light,
        keyboardType: TextInputType.phone,
        textAlign: TextAlign.center,
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        decoration: const InputDecoration(),
        onChanged: (value) {
          nextNode(value: value, focusNode: _node2);
        },
      ),
    );
  }

  SizedBox buildNode2Box() {
    return SizedBox(
      width: 20.w,
      height: 10.h,
      child: TextFormField(
        controller: _node2Controller,
        focusNode: _node2,
        textInputAction: TextInputAction.next,
        keyboardAppearance: Brightness.light,
        keyboardType: TextInputType.phone,
        textAlign: TextAlign.center,
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        decoration: const InputDecoration(),
        onChanged: (value) {
          nextNode(value: value, focusNode: _node3);
        },
      ),
    );
  }

  SizedBox buildNode3Box() {
    return SizedBox(
      width: 20.w,
      height: 10.h,
      child: TextFormField(
        controller: _node3Controller,
        focusNode: _node3,
        textInputAction: TextInputAction.next,
        keyboardAppearance: Brightness.light,
        keyboardType: TextInputType.phone,
        textAlign: TextAlign.center,
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        decoration: const InputDecoration(),
        onChanged: (value) {
          nextNode(value: value, focusNode: _node4);
        },
      ),
    );
  }

  SizedBox buildNode4Box() {
    return SizedBox(
      width: 20.w,
      height: 10.h,
      child: TextFormField(
        controller: _node4Controller,
        focusNode: _node4,
        textInputAction: TextInputAction.next,
        keyboardAppearance: Brightness.light,
        keyboardType: TextInputType.phone,
        textAlign: TextAlign.center,
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        decoration: const InputDecoration(),
        onChanged: (value) {
          _node4.unfocus();
        },
      ),
    );
  }
}
