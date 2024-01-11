import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:telehconsult/helpers/teleh_text_style.dart';

import 'appointment_page.dart';





class DoctorDetails extends StatefulWidget {
  const DoctorDetails({Key? key}) : super(key: key);

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: doctordetailsform(),
      ),
    );
  }

  Widget doctordetailsform(){
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
                    text: "Doctor Details",
                    fontColor:  HexColor("#333333"),
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ],
              ),
            ),





            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: SizedBox(
                child: ListView.builder(
                    itemCount: 1,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context,int index){
                      return Padding(
                        padding: const EdgeInsets.only(right: 20,top: 10),
                        child: Container(
                          height: 170,
                          width: 335,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: HexColor("#FFFFFF"),
                            boxShadow: [
                              BoxShadow(
                                color:
                                Colors.grey.shade400.withOpacity(0.4), //color of shadow
                                spreadRadius: 3, //spread radius
                                blurRadius: 4, // blur radius
                                offset: Offset(0, 2), // changes position of shadow
                              ),
                              //you can set more BoxShadow() here
                            ],
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 10),
                                    child: Row(
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [

                                            Container(
                                              width: 82,
                                              height: 82,
                                              decoration: BoxDecoration(
                                                image: const DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage("assets/images/cd1.png"),
                                                ),
                                                color: Colors.grey.shade200,
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                            ),

                                          ],
                                        ),

                                        SizedBox(width: 15,),

                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            TelehText(
                                              text: "Dr. Pediatrician",
                                              fontColor: HexColor("#333333"),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18,
                                            ),

                                            SizedBox(height: 5,),

                                            TelehText(
                                              text: "Specialist Cardiologist ",
                                              fontColor: HexColor("#677294CC"),
                                              fontWeight: FontWeight.w300,
                                              fontSize: 14,
                                            ),


                                            SizedBox(height: 5,),

                                            Padding(
                                              padding: const EdgeInsets.only(top: 4),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Icon(Icons.star,color: HexColor("#F6D060"),size: 12,),
                                                  Icon(Icons.star,color: HexColor("#F6D060"),size: 12,),
                                                  Icon(Icons.star,color: HexColor("#F6D060"),size: 12,),
                                                  Icon(Icons.star,color: HexColor("#F6D060"),size: 12,),
                                                  Icon(Icons.star,color: HexColor("#E2E5EA"),size: 12,),


                                                ],
                                              ),
                                            )




                                          ],
                                        ),

                                      ],
                                    ),
                                  ),



                                  Padding(
                                    padding: const EdgeInsets.only(top: 16,right: 16,bottom: 16),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [

                                        Icon(Icons.favorite,color: HexColor("#FF0000"),size: 16,),


                                       SizedBox(height: 30,),


                                        Row(
                                          children: [
                                            TelehText(
                                              text: "\u0024",
                                              fontColor: HexColor("#0EBE7E"),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                            ),


                                            TelehText(
                                              text: " 28.00/hr",
                                              fontColor: HexColor("#677294"),
                                              fontWeight: FontWeight.w300,
                                              fontSize: 10,
                                            ),



                                          ],
                                        ),

                                      ],
                                    ),
                                  ),















                                ],
                              ),

                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap:(){
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                          pageBuilder: (c, a1, a2) => AppointmentPage(),
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
                                      width:140,
                                      height: 32,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),color: HexColor("#0EBE7E")),
                                      child: Center(
                                      child:    TelehText(
                                        text: "Book Now",
                                        fontColor:  HexColor("#FFFFFF"),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    ),),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Container(
                height: 84,
                width: 305,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: HexColor("#FFFFFF"),
                  boxShadow: [
                    BoxShadow(
                      color:
                      Colors.grey.shade400.withOpacity(0.4), //color of shadow
                      spreadRadius: 3, //spread radius
                      blurRadius: 4, // blur radius
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                    //you can set more BoxShadow() here
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Container(
                        width: 90,
                        height: 64,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TelehText(
                              text: "100",
                              fontColor:  HexColor("#333333"),
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),

                            TelehText(
                              text: "Runing",
                              fontColor:  HexColor("#677294"),
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                            ),
                          ],
                        ),
                      ),

                      Container(
                        width: 90,
                        height: 64,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TelehText(
                              text: "500",
                              fontColor:  HexColor("#333333"),
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),

                            TelehText(
                              text: "Ongoing",
                              fontColor:  HexColor("#677294"),
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                            ),
                          ],
                        ),
                      ),

                      Container(
                        width: 90,
                        height: 64,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TelehText(
                              text: "700",
                              fontColor:  HexColor("#333333"),
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),

                            TelehText(
                              text: "Patient",
                              fontColor:  HexColor("#677294"),
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                            ),
                          ],
                        ),
                      ),











                    ],
                  ),
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 30,left: 20),
              child: Row(
                children: [
                  TelehText(
                    text:"Services",
                    fontColor:HexColor("#333333"),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 17,left: 20),
              child:         Row(
                children: [
                  TelehText(
                    text: "1.  ",
                    fontColor: HexColor("#0EBE7E"),
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),


                  TelehText(
                    text: "Patient care should be the number one priority.",
                    fontColor: HexColor("#677294"),
                    fontWeight: FontWeight.w300,
                    fontSize: 13,
                  ),



                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Divider(color: HexColor("#677294"),indent: 20,endIndent: 20,thickness: 0.5,),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 17,left: 20),
              child:         Row(
                children: [
                  TelehText(
                    text: "2.  ",
                    fontColor: HexColor("#0EBE7E"),
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),


                  TelehText(
                    text: "If you run your practiceyou know how frustrating.",
                    fontColor: HexColor("#677294"),
                    fontWeight: FontWeight.w300,
                    fontSize: 13,
                  ),



                ],
              ),
            ),

             Padding(
              padding: EdgeInsets.only(top: 10),
              child: Divider(color: HexColor("#677294"),indent: 20,endIndent: 20,thickness: 0.5,),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 17,left: 20),
              child:         Row(
                children: [
                  TelehText(
                    text: "3.  ",
                    fontColor: HexColor("#0EBE7E"),
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),


                  TelehText(
                    text: "That’s why some of appointment reminder system.",
                    fontColor: HexColor("#677294"),
                    fontWeight: FontWeight.w300,
                    fontSize: 13,
                  ),



                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
              child: Container(
                height: 210,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: HexColor("#FFFFFF"),
                  boxShadow: [
                    BoxShadow(
                      color:
                      Colors.grey.shade400.withOpacity(0.4), //color of shadow
                      spreadRadius: 3, //spread radius
                      blurRadius: 4, // blur radius
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                    //you can set more BoxShadow() here
                  ],
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/mapimg.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                )
              ),
            )

          ],
        ),
      ),
    );

  }
}
