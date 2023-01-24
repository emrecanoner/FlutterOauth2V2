import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_oauth2/main.dart';
import 'package:flutter_oauth2/riverpod/riverpod_management.dart';
import 'package:flutter_oauth2/screens/signup.dart';
import 'package:flutter_oauth2/utils/constant.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  bool isHiddenPassword = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: gWidth,
              height: gHeight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: gWidth,
                    height: gHeight / 4,
                    child: Image.asset("assets/images/ester.png"),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, right: 260),
                    width: gWidth / 4,
                    height: gHeight / 14,
                    child: FittedBox(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Poppins-Regular',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: gHeight / 15,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 50,
                            width: gWidth / 1.2,
                            child: TextField(
                              controller: ref.read(signUpRiverpod).username,
                              readOnly: false,
                              cursorColor: Colors.black,
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              showCursor: true,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(LineIcons.userCircle),
                                  suffixIcon: null,
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: buttonColor, width: 2.5),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 2),
                                  ),
                                  labelText: 'Username',
                                  labelStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: gHeight / 15,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 50,
                            width: gWidth / 1.2,
                            child: TextField(
                              controller: ref.read(signUpRiverpod).password,
                              obscureText: isHiddenPassword,
                              readOnly: false,
                              cursorColor: Colors.black,
                              style: TextStyle(color: Colors.black),
                              showCursor: true,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(LineIcons.alternateUnlock),
                                  suffixIcon: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isHiddenPassword = !isHiddenPassword;
                                        });
                                      },
                                      child: Icon(isHiddenPassword
                                          ? Icons.visibility_off
                                          : Icons.visibility)),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: buttonColor, width: 2.5),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 2),
                                  ),
                                  labelText: 'Password',
                                  labelStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    width: gWidth,
                    height: gHeight / 15,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.offAll(SignUpPage());
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Poppins-Regular'),
                      ),
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all(buttonColor)),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: gWidth,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 130,
                            height: 0.5,
                            color: iconColor,
                          ),
                          Text(
                            '  OR  ',
                            style: TextStyle(color: iconColor, fontSize: 20),
                          ),
                          Container(
                            width: 130,
                            height: 0.5,
                            color: iconColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: gWidth,
                    height: gHeight / 15,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.offAll(SignUpPage());
                      },
                      child: Row(
                        children: [
                          SizedBox(width: 40),
                          SizedBox(
                            height: 40,
                            width: 40,
                            child: Image.asset("assets/images/ester2.png"),
                          ),
                          SizedBox(width: 20),
                          Text(
                            "New To Ester? Register",
                            style: TextStyle(
                                color: Color.fromARGB(255, 90, 90, 90),
                                fontFamily: 'Poppins-Regular',
                                fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                      style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(
                              buttonColor.withOpacity(0.2)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 238, 238, 238),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
