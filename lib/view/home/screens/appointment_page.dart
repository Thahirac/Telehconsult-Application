import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:telehconsult/helpers/teleh_text_style.dart';

import 'datepick_appointment_page.dart';





class AppointmentPage extends StatefulWidget {
  const AppointmentPage({Key? key}) : super(key: key);

  @override
  State<AppointmentPage> createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {

  var patientname_Controller = TextEditingController();
  var contactnumber_Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: appointmentdetailsform(),
      ),
    );
  }

  Widget appointmentdetailsform(){
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
                    text: "Appointment",
                    fontColor:  HexColor("#333333"),
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ],
              ),
            ),





            Padding(
              padding: const EdgeInsets.only(left: 20,top: 38),
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
                          height: 123,
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
                                    padding: const EdgeInsets.only(top: 16,right: 16,),
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

                            ],
                          ),
                        ),
                      );
                    }
                ),
              ),
            ),




            Padding(
              padding: const EdgeInsets.only(top: 30,left: 20),
              child: Row(
                children: [
                  TelehText(
                    text:"Appointment For",
                    fontColor:HexColor("#333333"),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),



            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), //border corner radius
              ),
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: TextFormField(
                controller: patientname_Controller,
                keyboardType: TextInputType.name,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return "Please enter your name";
                //   }
                // },
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Patient Name',
                  hintStyle:
                  TextStyle(color: HexColor("#677294"), fontSize: 14,fontFamily: "Rubik",fontWeight: FontWeight.w300),

                  contentPadding:
                  const EdgeInsets.only(left: 14.0, bottom: 6.0, top: 8.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: HexColor("#677294")),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:HexColor("#677294")),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), //border corner radius
              ),
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: TextFormField(
                controller: contactnumber_Controller,
                keyboardType: TextInputType.number,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return "Please enter your name";
                //   }
                // },
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Contact Number',
                  hintStyle:
                  TextStyle(color: HexColor("#677294"), fontSize: 14,fontFamily: "Rubik",fontWeight: FontWeight.w300),

                  contentPadding:
                  const EdgeInsets.only(left: 14.0, bottom: 6.0, top: 8.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: HexColor("#677294")),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:HexColor("#677294")),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30,left: 20),
              child: Row(
                children: [
                  TelehText(
                    text:"Who is this patient?",
                    fontColor:HexColor("#333333"),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),



            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child:   SizedBox(
                height: 145,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [

                    Column(
                      children: [
                        InkWell(
                          onTap: (){

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

                                  Icon(Icons.add,size: 40,color: HexColor("#0EBE7E"),),

                                  SizedBox(height: 5,),

                                  TelehText(
                                    text: "Add",
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

                    SizedBox(width: 5,),

                    SizedBox(
                      height: 140,
                      child: Column(
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
                          SizedBox(height: 3,),
                          TelehText(
                            text: "My Self",
                            fontColor: HexColor("#677294"),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 5,),

                    SizedBox(
                      height: 140,
                      child: Column(
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
                          SizedBox(height: 3,),
                          TelehText(
                            text: "My child",
                            fontColor: HexColor("#677294"),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 5,),

                    SizedBox(
                      height: 140,
                      child: Column(
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
                          SizedBox(height: 3,),
                          TelehText(
                            text: "My wife",
                            fontColor: HexColor("#677294"),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ),


            Padding(
              padding: const EdgeInsets.only(top: 48),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 295,
                    height: 54,
                    child: TextButton(
                      child: TelehText(
                        text: "Next",
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
                            pageBuilder: (c, a1, a2) => DatepickappointmentPage(),
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
            ),


          ],
        ),
      ),
    );

  }
}
