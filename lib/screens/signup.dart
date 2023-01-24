import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_oauth2/riverpod/riverpod_management.dart';
import 'package:flutter_oauth2/screens/login.dart';
import 'package:flutter_oauth2/utils/constant.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';
import 'package:line_icons/line_icons.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  bool isHiddenPassword = true;
  bool isHiddenPassword2 = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
            width: gWidth,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 25),
                  width: gWidth,
                  height: gHeight / 5,
                  child: Image.asset("assets/images/ester3.png"),
                ),
                Container(
                  margin: EdgeInsets.only(right: 250),
                  width: gWidth / 4,
                  height: gHeight / 14,
                  child: FittedBox(
                    child: Text(
                      'Sign Up',
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
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
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
                            controller: ref.read(signUpRiverpod).firstName,
                            readOnly: false,
                            cursorColor: Colors.black,
                            style: TextStyle(color: Colors.black),
                            showCursor: true,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.assignment_ind_outlined),
                                suffixIcon: null,
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: buttonColor, width: 2.5),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                labelText: 'First Name',
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
                            controller: ref.read(signUpRiverpod).lastName,
                            readOnly: false,
                            cursorColor: Colors.black,
                            style: TextStyle(color: Colors.black),
                            showCursor: true,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.assignment_ind_rounded),
                                suffixIcon: null,
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: buttonColor, width: 2.5),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                labelText: 'Last Name',
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
                            controller: ref.read(signUpRiverpod).email,
                            readOnly: false,
                            cursorColor: Colors.black,
                            style: TextStyle(color: Colors.black),
                            showCursor: true,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email_outlined),
                                suffixIcon: null,
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: buttonColor, width: 2.5),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                labelText: 'E-Mail',
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
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
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
                            controller:
                                ref.read(signUpRiverpod).passwordConfirm,
                            obscureText: isHiddenPassword2,
                            readOnly: false,
                            cursorColor: Colors.black,
                            style: TextStyle(color: Colors.black),
                            showCursor: true,
                            decoration: InputDecoration(
                                prefixIcon:
                                    Icon(LineIcons.alternateArrowCircleUpAlt),
                                suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isHiddenPassword2 = !isHiddenPassword2;
                                      });
                                    },
                                    child: Icon(isHiddenPassword2
                                        ? Icons.visibility_off
                                        : Icons.visibility)),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: buttonColor, width: 2.5),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                labelText: 'Password Confirm',
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
                            controller: ref.read(signUpRiverpod).phoneNumber,
                            readOnly: false,
                            cursorColor: Colors.black,
                            maxLines: 1,
                            keyboardType: TextInputType.number,
                            style: TextStyle(color: Colors.black),
                            showCursor: true,
                            decoration: InputDecoration(
                                prefixIcon: Icon(LineIcons.phone),
                                suffixIcon: null,
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: buttonColor, width: 2.5),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                labelText: 'Phone Number',
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
                    onPressed: () => ref.read(signUpRiverpod).fetch(),
                    child: Text(
                      'Continue',
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
                GestureDetector(
                  onTap: () {
                    Get.offAll(LoginPage());
                  },
                  child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 17),
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
                              'Back Home',
                              style: TextStyle(
                                  color: buttonColor,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Poppins-Regular',
                                  fontSize: 14),
                            ),
                            Container(
                              width: 130,
                              height: 0.5,
                              color: iconColor,
                            ),
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
