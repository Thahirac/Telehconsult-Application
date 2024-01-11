import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:telehconsult/helpers/teleh_text_style.dart';
import 'package:flutter/cupertino.dart';
import '../../bottomnav/bottom_nav.dart';
import 'allmedicalrecords_page.dart';
class AddrecordPage extends StatefulWidget {
  const AddrecordPage({Key? key}) : super(key: key);

  @override
  State<AddrecordPage> createState() => _AddrecordPageState();
}

class _AddrecordPageState extends State<AddrecordPage> {

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

  Widget uploadrecordbottombar() {
          return Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              boxShadow: [
                BoxShadow(color: Colors.grey, spreadRadius: 0, blurRadius: 10),
              ],
            ),
            height: MediaQuery.of(context).size.height * 0.55,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TelehText(
                          text: "Record for",
                          fontColor: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),

                        SizedBox(height: 15,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            TelehText(
                              text: "Abdullah Mamun",
                              fontColor: HexColor("#0EBE7E"),
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),

                            Icon(Icons.edit,color: HexColor("#677294"),size: 18,),




                          ],
                        ),

                        SizedBox(height: 20,),

                          const Divider(
                          color: Colors.grey, //color of divider
                         //height spacing of divider
                          thickness: 0.5, //thickness of divier line
                          indent: 5, //spacing at the start of divider
                          endIndent: 5, //spacing at the end of divider
                        ),

                        SizedBox(height: 15,),




                        const TelehText(
                          text: "Type of record",
                          fontColor: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),

                        SizedBox(height: 20,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Column(
                              children: [

                                Image.asset(
                                  'assets/images/repologo.png',
                                  width: 17.0,
                                  height: 22.0,
                                  fit: BoxFit.cover,
                                  color: HexColor("#677294"),
                                ),

                                SizedBox(height: 10,),

                                TelehText(
                                  text: "Report",
                                  fontColor: HexColor("#677294"),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),

                              ],
                            ),
                            SizedBox(width: 45,),

                            Column(
                              children: [

                                Image.asset(
                                  'assets/images/preslogo.png',
                                  width: 17.0,
                                  height: 22.0,
                                  fit: BoxFit.cover,
                                  color: HexColor("#677294"),
                                ),
                                SizedBox(height: 10,),
                                TelehText(
                                  text: "Prescription",
                                  fontColor: HexColor("#677294"),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),

                              ],
                            ),
                            SizedBox(width: 45,),
                            Column(
                              children: [

                                Image.asset(
                                  'assets/images/invlogo.png',
                                  width: 17.0,
                                  height: 22.0,
                                  fit: BoxFit.cover,
                                  color: HexColor("#677294"),
                                ),
                                SizedBox(height: 10,),
                                TelehText(
                                  text: "Invoice",
                                  fontColor: HexColor("#677294"),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),

                              ],
                            ),




                          ],
                        ),

                        SizedBox(height: 20,),

                        const Divider(
                          color: Colors.grey, //color of divider
                          //height spacing of divider
                          thickness: 0.5, //thickness of divier line
                          indent: 5, //spacing at the start of divider
                          endIndent: 5, //spacing at the end of divider
                        ),


                        SizedBox(height: 15,),

                        const TelehText(
                          text: "Record created on",
                          fontColor: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),

                        SizedBox(height: 15,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            TelehText(
                              text: "27 Feb, 2021",
                              fontColor: HexColor("#0EBE7E"),
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),

                            Icon(Icons.edit,color: HexColor("#677294"),size: 18,),




                          ],
                        ),

                        SizedBox(height: 20,),

                        const Divider(
                          color: Colors.grey, //color of divider
                          //height spacing of divider
                          thickness: 0.5, //thickness of divier line
                          indent: 5, //spacing at the start of divider
                          endIndent: 5, //spacing at the end of divider
                        ),


                        SizedBox(height: 20,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 270,
                              height: 54,
                              child: TextButton(
                                child: TelehText(
                                  text: "Upload record",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                                style: TextButton.styleFrom(
                                  primary: Colors.white,
                                  backgroundColor: HexColor("#0EBE7E"),
                                ),
                                onPressed:() {

                                  // uploadrecordbottombar(context);


                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (c, a1, a2) => AllMedicalRecords(),
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
                          ],
                        ),
                        SizedBox(height: 30,),


                      ],
                    ),
                  )),
            ),
          );

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: medicalrecordform(),
        // bottomNavigationBar: uploadrecordbottombar(),
        bottomSheet: uploadrecordbottombar(),


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
                    text: "Add Records",
                    fontColor:  HexColor("#333333"),
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 125,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage("assets/images/prof2.png"),
                      ),
                    ),
                  ),

                  SizedBox(width: 5,),

                  InkWell(
                    onTap: (){
                      addrecorddisplayBottomSheet(context);
                    },
                    child: Container(
                      width: 100,
                      height: 125,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                       color: HexColor("#C6EFE5"),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                          Icon(Icons.add,size: 35,color: HexColor("#0EBE7E"),),

                            SizedBox(height: 5,),

                            TelehText(
                              text: "Add more\nimages",
                              fontColor: HexColor("#0EBE7E"),
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),


                ],
              ),
            ),







          ],
        ),
      ),
    );

  }
}
