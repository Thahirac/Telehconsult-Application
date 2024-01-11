import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';
import '../../../helpers/teleh_text_style.dart';
import '../../../widgets/drower/drower_page.dart';
import 'editprofile_page.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  var searchController = TextEditingController();



  XFile? _image;

  set imageFile(XFile? value) {
    _image = value == null ? null : value;
  }

  Future pickImage() async {
    try {
      XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      setState(() {
        _image = XFile(image.path);
        print(" this is path $_image");
        print(_image?.path);
      });
    } on PlatformException catch (e) {
      print('failed : $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: drowerAfterlogin(),
        body: profileform(),
      ),
    );
  }

  Widget profileform(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/splash_bg.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 375,
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30),),
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.centerRight,
                      colors: [HexColor("#0EBE7E"),HexColor("#07D9AD"),]
                  )

              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [


                  Padding(
                    padding: const EdgeInsets.only(top: 40,left: 20),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20,),
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              padding: EdgeInsets.only(left: 6),
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              margin: EdgeInsets.only(right: 0, top: 0),
                              child:  Center(
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: HexColor("#677294"),
                                  size: 13,
                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: 10,),

                        TelehText(
                          text: "Profile",
                          fontColor:  HexColor("#FFFFFF"),
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ],
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: TelehText(
                      text: "Set up your profile",
                      fontColor:  HexColor("#FFFFFF"),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TelehText(
                      text: "Update your profile to connect your doctor with\nbetter impression.",
                      fontColor: HexColor("#FFFFFF"),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,

                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(top: 22),
                    child: Stack(
                      children: [
                        _image == null
                            ? CircleAvatar(
                          radius: 65,
                          backgroundColor: Colors.grey.shade400,
                          child: ClipOval(
                            child:   _image != null
                                ? Icon(
                              Icons.account_circle,
                              color: Colors.white,
                              size: 100,
                            )
                                : Image.asset(
                              "assets/images/prof.png",
                              width: 130,
                              height: 130,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )

                        // Container(
                        //   height: 80,
                        //   width: 80,
                        //   decoration: BoxDecoration(
                        //       color: Colors.grey.shade500,
                        //       shape: BoxShape.circle),
                        //   child: data.userdatalist?['user']['profile_picture_url'] == null
                        //       ? Icon(
                        //     Icons.account_circle,
                        //     color: Colors.white,
                        //     size: 55,
                        //   )
                        //       : Image.network("${data.userdatalist?['user']['profile_picture_url']}",fit: BoxFit.cover,),
                        // )

                            : Container(
                          padding: EdgeInsets.all(20),
                          height: 130,
                          width: 130,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: FileImage(File(_image!.path)),
                              ),
                              color: Colors.grey.shade200,
                              shape: BoxShape.circle),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: GestureDetector(
                            onTap: () => pickImage(),
                            child: Container(
                              padding: EdgeInsets.all(5),
                              height: 36,
                              width: 36,
                              decoration: BoxDecoration(
                                  color: HexColor("#677294"),
                                  shape: BoxShape.circle),
                              child: Center(
                                child: Icon(
                                  Icons.camera_alt_rounded,
                                  color: Colors.white,
                                  size: 23,
                                )
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),



                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 30,top: 15,right: 20),
              child:  Row(
                children: [
                  TelehText(
                    text: "Personal information",
                    fontColor:  HexColor("#000000"),
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 12,left: 20,right: 20),
              child: Container(
                height: 60,
                width: 335,
                decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TelehText(
                            text: "Name",
                            fontColor:  HexColor("#0EBE7E"),
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                          ),

                          SizedBox(height: 5,),

                          TelehText(
                            text: "Joseph Onunwa",
                            fontColor:  HexColor("#0EBE7E"),
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                          ),
                        ],
                      ),
                    ),

                    Expanded(child: SizedBox()),

                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: IconButton(
                        splashColor: Colors.white,
                          splashRadius: 3,
                          onPressed:() {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (c, a1, a2) =>  EditProfilePage(),
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
                          icon: Icon(Icons.edit,color: HexColor("#677294"),size: 18,)),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12,left: 20,right: 20),
              child: Container(
                height: 60,
                width: 335,
                decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TelehText(
                            text: "Contact Number",
                            fontColor:  HexColor("#0EBE7E"),
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                          ),
                          SizedBox(height: 5,),
                          TelehText(
                            text: "+8801800000000",
                            fontColor:  HexColor("#677294"),
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),

                    Expanded(child: SizedBox()),

                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: IconButton(
                          splashColor: Colors.white,
                          splashRadius: 3,
                          onPressed:() {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (c, a1, a2) =>  EditProfilePage(),
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
                          icon: Icon(Icons.edit,color: HexColor("#677294"),size: 18,)),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12,left: 20,right: 20),
              child: Container(
                height: 60,
                width: 335,
                decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TelehText(
                            text: "Date of birth",
                            fontColor:  HexColor("#0EBE7E"),
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                          ),
                          SizedBox(height: 5,),
                          TelehText(
                            text: "DD MM YYYY",
                            fontColor:  HexColor("#677294"),
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),

                    Expanded(child: SizedBox()),

                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: IconButton(
                          splashColor: Colors.white,
                          splashRadius: 3,
                          onPressed:() {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (c, a1, a2) =>  EditProfilePage(),
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
                          icon: Icon(Icons.edit,color: HexColor("#677294"),size: 18,)),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12,left: 20,right: 20),
              child: Container(
                height: 60,
                width: 335,
                decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TelehText(
                            text: "Location",
                            fontColor:  HexColor("#0EBE7E"),
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                          ),
                          SizedBox(height: 5,),
                          TelehText(
                            text: "Add Details",
                            fontColor:  HexColor("#677294"),
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),

                    Expanded(child: SizedBox()),

                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: IconButton(
                          splashColor: Colors.white,
                          splashRadius: 3,
                          onPressed:() {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (c, a1, a2) =>  EditProfilePage(),
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
                          icon: Icon(Icons.edit,color: HexColor("#677294"),size: 18,)),
                    )
                  ],
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(bottom: 10,top: 40),
              child: Container(
                width: 290,
                height: 54,
                child: TextButton(
                  child: TelehText(
                    text: "Continue",
                    fontColor: HexColor("#FFFFFF"),
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: HexColor("#0EBE7E"),
                    shape:   RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                  ),
                  onPressed:() {

                  },
                ),
              ),
            )

          ],
        ),
      ),
    );

  }


}
