import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pinput/pinput.dart';
import 'package:telehconsult/helpers/teleh_text_style.dart';
import 'package:telehconsult/view/auth/registration_page.dart';
import '../bottomnav/bottom_nav.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  var email_Controller = TextEditingController();
  var Password_Controller = TextEditingController();
  var Password_Controller1 = TextEditingController();
  var Password_Controller2 = TextEditingController();
  bool _isObscure = true;
  bool _isObscure1 = true;
  bool _isObscure2 = true;

  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  void forgotdisplayBottomSheet(BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        context: context,
        builder: (ctx) {
          return SingleChildScrollView(
            child: AnimatedPadding(
              padding: MediaQuery.of(context).viewInsets,
              duration: const Duration(milliseconds: 100),
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 60, left: 20),
                        child: const TelehText(
                          text: "Forgot password",
                          fontColor: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 20),
                        child: const TelehText(
                          text: "Enter your email for the verification proccesss,",
                          fontColor: Colors.black,
                          fontWeight: FontWeight.w200,
                          fontSize: 14,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 2, left: 20),
                        child: const TelehText(
                          text: "we will send 4 digits code to your email.",
                          fontColor: Colors.black,
                          fontWeight: FontWeight.w200,
                          fontSize: 14,
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 40, left: 20,right: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10), //border corner radius
                        ),
                        child: TextFormField(
                          controller: email_Controller,
                          keyboardType: TextInputType.emailAddress,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter email address";
                            }
                            if (!RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value)) {
                              return "Please enter valid email address";
                            }
                          },
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                            hintStyle:
                            TextStyle(color: Colors.grey.shade600, fontSize: 14),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding:
                            const EdgeInsets.only(left: 14.0, bottom: 6.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: HexColor("#67729429")),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: HexColor("#67729429")),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(
                          left: 45,
                          right: 45,
                          top: 35,
                        ),
                        child: InkWell(
                          splashColor: Color.fromARGB(255, 255, 111, 0),
                          highlightColor: Colors.white,
                          focusColor: Colors.white,
                          onTap:() {
                            Navigator.pop(context);
                            otpdisplayBottomSheet(context);
                          },
                          child: Container(
                            height: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: HexColor("#0EBE7E"),
                            ),
                            child: const Center(
                              child:
                              // _isloading
                              //     ? const Padding(
                              //   padding: EdgeInsets.all(10.0),
                              //   child: SizedBox(
                              //       height: 20,
                              //       width: 20,
                              //       child: CircularProgressIndicator(
                              //         strokeWidth: 1,
                              //         color: Colors.white,
                              //       )),
                              // )
                              //     : const
                              TelehText(
                                text: "Continue",
                                fontColor: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  )),
            ),
          );
        });
  }


  void otpdisplayBottomSheet(BuildContext context) {

    var focusedBorderColor = HexColor("#67729429");
    const fillColor = Color.fromRGBO(243, 246, 249, 0);
    var borderColor = HexColor("#67729429");

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
        fontSize: 26,
      fontFamily: "Rubik",
      fontWeight: FontWeight.w700,
      color: HexColor("#0EBE7E"),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: borderColor),
      ),
    );

    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        context: context,
        builder: (ctx) {
          return SingleChildScrollView(
            child: AnimatedPadding(
              padding: MediaQuery.of(context).viewInsets,
              duration: const Duration(milliseconds: 100),
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 60, left: 20),
                        child: const TelehText(
                          text: "Enter 4 Digits Code",
                          fontColor: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 20),
                        child: const TelehText(
                          text: "Enter the 4 digits code that you received on",
                          fontColor: Colors.black,
                          fontWeight: FontWeight.w200,
                          fontSize: 14,
                        ),
                      ),

                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 30,),
                        child: Form(
                          key: formKey,
                          child: Column(
                            children: [
                              Directionality(
                                // Specify direction if desired
                                textDirection: TextDirection.ltr,
                                child: Pinput(
                                  controller: pinController,
                                  focusNode: focusNode,
                                  androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
                                  listenForMultipleSmsOnAndroid: true,
                                  defaultPinTheme: defaultPinTheme,
                                  // validator: (value) {
                                  //   return value == '2222' ? null : 'Pin is incorrect';
                                  // },
                                  hapticFeedbackType: HapticFeedbackType.lightImpact,
                                  onCompleted: (pin) {
                                    debugPrint('onCompleted: $pin');
                                  },
                                  onChanged: (value) {
                                    debugPrint('onChanged: $value');
                                  },
                                  cursor: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(bottom: 9),
                                        width: 22,
                                        height: 1,
                                        color: focusedBorderColor,
                                      ),
                                    ],
                                  ),
                                  focusedPinTheme: defaultPinTheme.copyWith(
                                    decoration: defaultPinTheme.decoration!.copyWith(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: focusedBorderColor),
                                    ),
                                  ),
                                  submittedPinTheme: defaultPinTheme.copyWith(
                                    decoration: defaultPinTheme.decoration!.copyWith(
                                      color: fillColor,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: focusedBorderColor),
                                    ),
                                  ),
                                  errorPinTheme: defaultPinTheme.copyBorderWith(
                                    border: Border.all(color: Colors.redAccent),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(
                          left: 45,
                          right: 45,
                          top: 35,
                        ),
                        child: InkWell(
                          splashColor: Color.fromARGB(255, 255, 111, 0),
                          highlightColor: Colors.white,
                          focusColor: Colors.white,
                          onTap: () {
                            Navigator.pop(context);
                            resetpassdisplayBottomSheet(context);
                          },
                          child: Container(
                            height: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: HexColor("#0EBE7E"),
                            ),
                            child: const Center(
                              child:
                              // _isloading
                              //     ? const Padding(
                              //   padding: EdgeInsets.all(10.0),
                              //   child: SizedBox(
                              //       height: 20,
                              //       width: 20,
                              //       child: CircularProgressIndicator(
                              //         strokeWidth: 1,
                              //         color: Colors.white,
                              //       )),
                              // )
                              //     : const
                              TelehText(
                                text: "Continue",
                                fontColor: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  )),
            ),
          );
        });
  }

  void resetpassdisplayBottomSheet(BuildContext context) {


    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        context: context,
        builder: (ctx) {
          return SingleChildScrollView(
            child: AnimatedPadding(
              padding: MediaQuery.of(context).viewInsets,
              duration: const Duration(milliseconds: 100),
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 60, left: 20),
                        child: const TelehText(
                          text: "Reset Password",
                          fontColor: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 20),
                        child: const TelehText(
                          text: "Set the new password for your account so you can",
                          fontColor: Colors.black,
                          fontWeight: FontWeight.w200,
                          fontSize: 14,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 2, left: 20),
                        child: const TelehText(
                          text: "login and access all the features.",
                          fontColor: Colors.black,
                          fontWeight: FontWeight.w200,
                          fontSize: 14,
                        ),
                      ),



                      Container(
                        margin: EdgeInsets.only(top: 40, left: 20,right: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15), //border corner radius
                        ),
                        child: TextFormField(
                          controller: Password_Controller1,
                          obscureText: _isObscure1,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your password";
                            }
                          },
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                icon: Icon(
                                  _isObscure1 ? Icons.visibility_off : Icons.visibility,
                                  color: Colors.grey.shade700,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isObscure1 = !_isObscure1;
                                  });
                                }),
                            border: InputBorder.none,
                            hintText: 'New Password',
                            hintStyle:
                            TextStyle(color: Colors.grey.shade600, fontSize: 14),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding:
                            const EdgeInsets.only(left: 14.0, bottom: 6.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: HexColor("#67729429")),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: HexColor("#67729429")),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 20, left: 20,right: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15), //border corner radius
                        ),
                        child: TextFormField(
                          controller: Password_Controller2,
                          obscureText: _isObscure2,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your password";
                            }
                          },
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                icon: Icon(
                                  _isObscure2 ? Icons.visibility_off : Icons.visibility,
                                  color: Colors.grey.shade700,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isObscure2 = !_isObscure2;
                                  });
                                }),
                            border: InputBorder.none,
                            hintText: 'Re-enter Password',
                            hintStyle:
                            TextStyle(color: Colors.grey.shade600, fontSize: 14),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding:
                            const EdgeInsets.only(left: 14.0, bottom: 6.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: HexColor("#67729429")),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: HexColor("#67729429")),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(
                          left: 45,
                          right: 45,
                          top: 35,
                        ),
                        child: InkWell(
                          splashColor: Color.fromARGB(255, 255, 111, 0),
                          highlightColor: Colors.white,
                          focusColor: Colors.white,
                          onTap:() {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: HexColor("#0EBE7E"),
                            ),
                            child: const Center(
                              child:
                              // _isloading
                              //     ? const Padding(
                              //   padding: EdgeInsets.all(10.0),
                              //   child: SizedBox(
                              //       height: 20,
                              //       width: 20,
                              //       child: CircularProgressIndicator(
                              //         strokeWidth: 1,
                              //         color: Colors.white,
                              //       )),
                              // )
                              //     : const
                              TelehText(
                                text: "Update Password",
                                fontColor: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  )),
            ),
          );
        });
  }


  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: loginform(),
        ),
      ),
    );
  }

  Widget loginform() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/splash_bg.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 140,
            ),
            Container(
              child: const TelehText(
                text: "Welcome back",
                fontColor: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 60),
              child: Container(
                child: const TelehText(
                  text:
                      "You can search c ourse, apply course and find\n scholarship for abroad studies",
                  fontColor: Colors.black,
                  fontWeight: FontWeight.w200,
                  fontSize: 14,
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(
                  left: 30,
                  right: 30,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 54,
                      width: 155,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(15), //border corner radius
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.5), //color of shadow
                            spreadRadius: 2, //spread radius
                            blurRadius: 3, // blur radius
                            offset: Offset(0, 2), // changes position of shadow
                            //first paramerter of offset is left-right
                            //second parameter is top to down
                          ),
                          //you can set more BoxShadow() here
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/google.png",
                            height: 30.0,
                            width: 30.0,
                          ),
                          const TelehText(
                            text: "Google",
                            fontColor: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 54,
                      width: 155,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(15), //border corner radius
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.5), //color of shadow
                            spreadRadius: 2, //spread radius
                            blurRadius: 3, // blur radius
                            offset: Offset(0, 2), // changes position of shadow
                            //first paramerter of offset is left-right
                            //second parameter is top to down
                          ),
                          //you can set more BoxShadow() here
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/facebook.png",
                            height: 30.0,
                            width: 30.0,
                          ),
                          const TelehText(
                            text: "Facebook",
                            fontColor: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10), //border corner radius
              ),
              margin: EdgeInsets.only(left: 30, right: 30, top: 20),
              child: TextFormField(
                controller: email_Controller,
                keyboardType: TextInputType.emailAddress,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter email address";
                  }
                  if (!RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value)) {
                    return "Please enter valid email address";
                  }
                },
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Email',
                  hintStyle:
                      TextStyle(color: Colors.grey.shade600, fontSize: 14),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding:
                      const EdgeInsets.only(left: 14.0, bottom: 6.0, top: 8.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: HexColor("#67729429")),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: HexColor("#67729429")),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15), //border corner radius
              ),
              margin: EdgeInsets.only(left: 30, right: 30, top: 20),
              child: TextFormField(
                controller: Password_Controller,
                obscureText: _isObscure,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your password";
                  }
                },
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure ? Icons.visibility_off : Icons.visibility,
                        color: Colors.grey.shade700,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      }),
                  border: InputBorder.none,
                  hintText: 'Password',
                  hintStyle:
                      TextStyle(color: Colors.grey.shade600, fontSize: 14),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding:
                      const EdgeInsets.only(left: 14.0, bottom: 6.0, top: 8.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: HexColor("#67729429")),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: HexColor("#67729429")),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 30, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () => forgotdisplayBottomSheet(context),
                    child: Container(
                      margin: EdgeInsets.only(left: 0, top: 0),
                      child: TelehText(
                        text: "Forgor password",
                        fontColor: HexColor("##3D4FEF"),
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 45,
                right: 45,
                top: 20,
              ),
              child: InkWell(
                splashColor: Color.fromARGB(255, 255, 111, 0),
                highlightColor: Colors.white,
                focusColor: Colors.white,
                onTap: () {
                  // setState(() {
                  //   _isloading = true;
                  // });
                  // login();


                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (c, a1, a2) => BottomNav(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var begin = Offset(1.0, 0.0);
                        var end = Offset.zero;
                        var tween = Tween(begin: begin, end: end);
                        var offsetAnimation = animation.drive(tween);
                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );
                      },
                      transitionDuration: Duration(milliseconds: 500),
                    ),
                  );

                },
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: HexColor("#0EBE7E"),
                  ),
                  child: const Center(
                    child:
                        // _isloading
                        //     ? const Padding(
                        //   padding: EdgeInsets.all(10.0),
                        //   child: SizedBox(
                        //       height: 20,
                        //       width: 20,
                        //       child: CircularProgressIndicator(
                        //         strokeWidth: 1,
                        //         color: Colors.white,
                        //       )),
                        // )
                        //     : const
                        TelehText(
                      text: "Login",
                      fontColor: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            /*
           Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                child: const Text(
                  "-or-",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                child: const JooseText(
                  text: "Sign in with",
                  fontColor: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // InkWell(
                //   onTap: () {
                //
                //   },
                //   child: Container(
                //     height: 60,
                //     width: 60,
                //     padding: const EdgeInsets.only(
                //       top: 10,
                //       bottom: 10,
                //     ),
                //     child: Image.asset(
                //       "assets/images/facebook.png",
                //       fit: BoxFit.contain,
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   width: 3,
                // ),
                InkWell(
                  onTap: () async {
                    setState(() {
                      _isloading2 = true;
                    });

                    await GoogleSignInController()
                        .signIn(context)
                        .then((value) => googlelogin());
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    child: _isloading2? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(padding: EdgeInsets.all(10.0), child: SizedBox(
                            height: 18,
                            width: 18,
                            child: CircularProgressIndicator(strokeWidth: 1,color: Colors.black,)),),
                      ],
                    ): Image.asset(
                      "assets/images/google.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
*/

            Expanded(child: SizedBox()),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TelehText(
                    text: "Don't have an account?",
                    fontWeight: FontWeight.w400,
                    fontColor: HexColor("#3D4FEF"),
                    fontSize: 14,
                  ),
                  SizedBox(width: 3),
                  InkWell(
                    splashColor: Colors.white,
                    highlightColor: Colors.white,
                    focusColor: Colors.white,
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (c, a1, a2) => SignUp(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            var begin = Offset(1.0, 0.0);
                            var end = Offset.zero;
                            var tween = Tween(begin: begin, end: end);
                            var offsetAnimation = animation.drive(tween);
                            return SlideTransition(
                              position: offsetAnimation,
                              child: child,
                            );
                          },
                          transitionDuration: Duration(milliseconds: 500),
                        ),
                      );
                    },
                    child: TelehText(
                      text: "Join us",
                      fontWeight: FontWeight.w400,
                      fontColor: HexColor("#3D4FEF"),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
