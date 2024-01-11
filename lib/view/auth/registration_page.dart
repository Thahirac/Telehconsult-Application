import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:telehconsult/helpers/teleh_text_style.dart';
import 'package:telehconsult/view/auth/login_page.dart';

import '../bottomnav/bottom_nav.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final _formKey = GlobalKey<FormState>();

  var name_Controller = TextEditingController();
  var email_Controller = TextEditingController();
  var Password_Controller = TextEditingController();
  bool _isObscure = true;
  int? val = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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

           SizedBox(height: 140,),

            Container(
              child: const TelehText(
                text: "Join us to start searching",
                fontColor: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 15,bottom: 60),
              child: Container(
                child: const TelehText(
                  text: "You can search c ourse, apply course and find\n scholarship for abroad studies",
                  fontColor: Colors.black,
                  fontWeight: FontWeight.w200,
                  fontSize: 14,
                ),
              ),
            ),


            Container(
              margin: EdgeInsets.only(left: 30, right: 30,),
              child: Row(
                children: [

                  Container(
                    height: 54,width: 155,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15), //border corner radius
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), //color of shadow
                          spreadRadius: 2, //spread radius
                          blurRadius: 3, // blur radius
                          offset: Offset(0, 2), // changes position of shadow
                          //first paramerter of offset is left-right
                          //second parameter is top to down
                        ),
                        //you can set more BoxShadow() here
                      ],
                    ),

                    child:  Row(
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

                  SizedBox(width: 15,),

                  Container(
                    height: 54,width: 155,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15), //border corner radius
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), //color of shadow
                          spreadRadius: 2, //spread radius
                          blurRadius: 3, // blur radius
                          offset: Offset(0, 2), // changes position of shadow
                          //first paramerter of offset is left-right
                          //second parameter is top to down
                        ),
                        //you can set more BoxShadow() here
                      ],
                    ),
                    child:  Row(
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
              )
            ),




            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15), //border corner radius
              ),
              margin: EdgeInsets.only(left: 30, right: 30, top: 20),
              child: TextFormField(
                controller: name_Controller,
                keyboardType: TextInputType.emailAddress,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your name";
                  }
                },
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Name',
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
                    borderSide: BorderSide(color:HexColor("#67729429")),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
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
                children: [
                  Radio(
                    value: 1,
                    groupValue: val,
                    onChanged: (value) {
                      setState(() {
                        value = val;
                        val=1;
                      });
                    },
                    activeColor: Colors.green,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 0, top: 0),
                    child:  TelehText(
                      text: "I agree with the Terms of Service & Privacy Policy",
                      fontColor: HexColor("#677294"),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),

                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 45, right: 45, top: 20,),
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
                      text: "Sign up",
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
                    text: "Have an account?",
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
                          pageBuilder: (c, a1, a2) => Login(),
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
                    child:  TelehText(
                      text: "Log in",
                      fontWeight: FontWeight.w400,
                      fontColor: HexColor("#3D4FEF"),
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
