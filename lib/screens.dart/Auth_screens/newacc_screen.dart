import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:medo_app/resources/colors.dart';
import 'package:medo_app/resources/widgets/widgets.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medo_app/utils/routes/routes_names.dart';

class NewAccount extends StatefulWidget {
  const NewAccount({super.key});

  @override
  State<NewAccount> createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
  bool istap = false;
  bool _ontap = false;
  final email_controller = TextEditingController();
  final password_controller = TextEditingController();
  bool isHidden = true;
  bool isFocus = false;
  bool PassisFocus = false;
  bool isChecked = false;

  FocusNode emailfocus = FocusNode();
  FocusNode passwordfocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: EdgeInsets.only(left: 20.w, top: 25.h),
                child: Icon(
                  FontAwesome.arrow_left_long,
                  color: colors.Logobg,
                  size: 30.h,
                ),
              ),
            ),
          ),
          body: InkWell(
            onTap: () {
              FocusScope.of(context).requestFocus(new FocusNode());
              setState(() {
                isFocus = false;
                PassisFocus = false;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 30.h),
                Center(
                  child: Image.asset(
                    'assets/images/medo_logo_blue.png',
                    fit: BoxFit.cover,
                    scale: 3.5.h,
                  ),
                ),
                SizedBox(height: 50.h),
                Center(
                  child: Text(
                    "Login  to your Account",
                    style: TextStyle(
                      // backgroundColor: colors.Logobg,

                      fontSize: 30.sp,
                      height: 1.h,
                      fontFamily: GoogleFonts.mukta().fontFamily,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                // EmailField
                SizedBox(height: 15.h),
                Padding(
                  padding: EdgeInsets.all(20.h.w),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 15.h),
                        child: SizedBox(
                          width: 355.w,
                          // height: 90,
                          child: TextFormField(
                            onTap: () {
                              setState(() {
                                isFocus = true;
                              });
                            },
                            onFieldSubmitted: (value) => FocusScope.of(context)
                                .requestFocus(passwordfocus),
                            controller: email_controller,
                            focusNode: emailfocus,
                            textInputAction: TextInputAction.next,
                            // autofocus: true,
                            maxLines: null,
                            cursorColor: Colors.blue,
                            style: TextStyle(
                              // height: 1.4,
                              fontFamily: GoogleFonts.roboto().fontFamily,
                              fontSize: 20.sp,
                            ),
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(55, 158, 158, 158),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: colors.Logobg,
                                  width: 2.w,
                                ),
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                fontSize: 18.sp,
                              ),
                              prefixIcon: isFocus
                                  ? Icon(
                                      EvaIcons.email,
                                      color: colors.Logobg,
                                    )
                                  : Icon(
                                      EvaIcons.email,
                                      color: Colors.grey,
                                    ),
                            ),
                          ),
                        ),
                      ),
                      // PasswordField
                      SizedBox(
                        width: 355.w,
                        child: TextFormField(
                          textInputAction: TextInputAction.done,
                          focusNode: passwordfocus,
                          // autofocus: true,
                          onTap: () {
                            setState(() {
                              PassisFocus = true;
                            });
                          },
                          cursorColor: Colors.blue,
                          obscureText: isHidden,
                          controller: password_controller,
                          style: TextStyle(
                            // color: Colors.blue,
                            // height: 1.4,
                            fontFamily: GoogleFonts.roboto().fontFamily,
                            fontSize: 20.sp,
                          ),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(55, 158, 158, 158),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(16.r),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: colors.Logobg,
                                width: 2.w,
                              ),
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              fontSize: 18.sp,
                            ),
                            prefixIcon: PassisFocus
                                ? Icon(
                                    BoxIcons.bxs_lock,
                                    color: colors.Logobg,
                                  )
                                : Icon(
                                    BoxIcons.bxs_lock,
                                    color: Colors.grey,
                                  ),
                            suffix: InkWell(
                              onTap: () {
                                setState(() {
                                  isHidden = !isHidden;
                                });
                              },
                              child: isHidden
                                  ? Icon(
                                      IonIcons.eye,
                                      color: colors.Logobg,
                                      // size: 23,
                                    )
                                  : Icon(
                                      PixelArtIcons.eye_closed,
                                      // size: 20,
                                      color: colors.Logobg,
                                    ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(bottom: 16.h, top: 12.h),
                              child: Checkbox(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.r),
                                ),
                                activeColor: colors.Logobg,
                                checkColor: Colors.white,
                                value: isChecked,
                                onChanged: (value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                              )),
                          Padding(
                            padding: EdgeInsets.only(bottom: 16.h, top: 12.h),
                            child: Text(
                              'Remember me',
                              style: TextStyle(
                                  fontSize: 17.sp, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, MyRoutes.HomepageRoute);
                        },
                        splashColor: Colors.white,
                        child: BlueButton(title: 'Sign in'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 20.h, top: 30.h),
                            child: Text(
                              'or continue with',
                              style: TextStyle(
                                  fontSize: 18.sp, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                _ontap = true;
                              });
                            },
                            child: Container(
                              child: Icon(
                                Icons.facebook,
                                size: 40.h,
                                color: Color.fromARGB(255, 29, 127, 207),
                              ),
                              height: 70.h,
                              width: 90.w,
                              decoration: BoxDecoration(
                                color: _ontap
                                    ? colors.Logobg.withOpacity(0.15)
                                    : Colors.transparent,
                                border:
                                    Border.all(color: Colors.grey, width: 1.w),
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          SmallButton(
                            logo: Logos.google,
                            border: Border.all(color: Colors.grey, width: 1.w),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          SmallButton(
                            logo: Logos.apple,
                            logosize: 33.h,
                            border: Border.all(color: Colors.grey, width: 1.w),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
