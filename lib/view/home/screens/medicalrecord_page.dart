import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:telehconsult/helpers/teleh_text_style.dart';
import 'package:flutter/cupertino.dart';
import '../../bottomnav/bottom_nav.dart';
import 'addrecord_page.dart';
class MedicalRecordPage extends StatefulWidget {
  const MedicalRecordPage({Key? key}) : super(key: key);

  @override
  State<MedicalRecordPage> createState() => _MedicalRecordPageState();
}

class _MedicalRecordPageState extends State<MedicalRecordPage> {


  void addrecorddisplayBottomSheet(BuildContext context) {
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
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50,left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TelehText(
                          text: "Add a record",
                          fontColor: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                        ),

                        SizedBox(height: 30,),

                        InkWell(
                          onTap: (){

                          },
                          child: Row(
                            children: [

                              Icon(Icons.camera_alt_rounded,color: HexColor("#677294"),size: 18,),

                             SizedBox(width: 8,),

                              TelehText(
                                text: "Take a photo",
                                fontColor: HexColor("#677294"),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 20,),


                        InkWell(
                          onTap: (){

                          },
                          child: Row(
                            children: [

                              Icon(Icons.image_rounded,color: HexColor("#677294"),size: 18,),

                              SizedBox(width: 8,),

                              TelehText(
                                text: "Upload from gallery",
                                fontColor: HexColor("#677294"),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 20,),


                        InkWell(
                          onTap: (){

                          },
                          child: Row(
                            children: [

                              Icon(Icons.file_present_rounded,color: HexColor("#677294"),size: 18,),

                              SizedBox(width: 8,),


                              TelehText(
                                text: "Upload files",
                                fontColor: HexColor("#677294"),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ],
                          ),
                        ),



                      ],
                    ),
                  )),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: medicalrecordform(),


      ),
    );
  }

  Widget medicalrecordform(){
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
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 40),
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
                    text: "Medical Records",
                    fontColor:  HexColor("#333333"),
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 20,top: 30),
              child: SizedBox(
                // height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                            width: 214,
                            height: 214,
                            decoration: BoxDecoration(
                              color: HexColor("#C6EFE5"),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child:          Container(
                                width: 87,
                                height: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/images/smologo.png"),
                                  ),
                                ),
                              ),
                            ),
                          ),



                        ],
                      ),

                      SizedBox(height: 25,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [


                              TelehText(
                                text: "Add a medical record.",
                                fontColor: HexColor("#222222"),
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),


                              SizedBox(height: 13,),

                              TelehText(
                                text: "A detailed health history helps a doctor diagnose\nyou btter.",
                                fontColor: HexColor("#677294"),
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),


                              SizedBox(height: 45,),

                              Padding(
                                padding: const EdgeInsets.only(bottom: 0),
                                child: Container(
                                  width: 270,
                                  height: 54,
                                  child: TextButton(
                                    child: TelehText(
                                      text: "Add a record",
                                      fontColor: HexColor("#FFFFFF"),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                    style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: HexColor("#0EBE7E"),
                                    ),
                                    onPressed:() {

                                      // addrecorddisplayBottomSheet(context);




                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                          pageBuilder: (c, a1, a2) => AddrecordPage(),
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
                                  ),
                                ),
                              )

                            ],
                          )

                        ],
                      ),

                    ],
                  )
              ),
            ),







          ],
        ),
      ),
    );

  }
}
