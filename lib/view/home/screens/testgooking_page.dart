import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:telehconsult/helpers/teleh_text_style.dart';
import 'package:telehconsult/view/home/screens/patientdetails_page.dart';

import '../../bottomnav/bottom_nav.dart';


class TestBookingModal {

  String? img;
  String? name;

  TestBookingModal({this.img,this.name});
}





class TestBookingPage extends StatefulWidget {
  const TestBookingPage({Key? key}) : super(key: key);

  @override
  State<TestBookingPage> createState() => _TestBookingPageState();
}

class _TestBookingPageState extends State<TestBookingPage> {



  List<TestBookingModal> testBookinggriditems = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    testBookinggriditems = [
      TestBookingModal(img: "assets/images/freehome1.png",name: "Free home\nSample pickup",),
      TestBookingModal(img: "assets/images/practo1.png",name: "Practo\nasociate labs",),
      TestBookingModal(img: "assets/images/ereports1.png",name: "E-Reports in\n24-72 hours",),
      TestBookingModal(img: "assets/images/freefollow1.png",name: "Free follow-up\nwith a doctor",),

    ];

  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: testbookingform(),
      ),
    );
  }

  Widget testbookingform(){
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
                    text: "Diagonstics Tests",
                    fontColor:  HexColor("#333333"),
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 30,left: 20,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  TelehText(
                    text: "Get Full body health checkups\nfrom the comfort of your home.",
                    alignment:TextAlign.justify,
                    fontColor:  HexColor("#000000"),
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10,left: 20,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  TelehText(
                    text: "Upto 45% off + get 10% healthcash back",
                    fontColor:  HexColor("#0EBE7E"),
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20,right: 20),
              child: SizedBox(
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 5,
                    ),
                    itemCount: 4,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context,int index){
                      return Container(
                        height: 70,
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                  image:  DecorationImage(
                                    fit: BoxFit.contain,
                                    image: AssetImage('${testBookinggriditems[index].img}'),
                                  ),
                              ),
                            ),

                            SizedBox(width: 10,),

                            TelehText(
                              text: '${testBookinggriditems[index].name}',
                              alignment:TextAlign.justify,
                              fontColor:  HexColor("#000000"),
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),

                          ],
                        ),
                      );
                    }
                ),
              ),
            ),



            Padding(
              padding: const EdgeInsets.only(top: 20,left: 20,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  TelehText(
                    text: "Recommend for you",
                    alignment:TextAlign.justify,
                    fontColor:  HexColor("#222222"),
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: SizedBox(
                //height: MediaQuery.of(context).size.height * 0.8,
                child: ListView.builder(
                    itemCount: 6,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context,int index){
                      return Padding(
                        padding: const EdgeInsets.only(right: 20,top: 15),
                        child: Container(
                          height: 427,
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Padding(
                                padding: const EdgeInsets.only(left: 20,top: 15),
                                child: Row(
                                  children: [

                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        TelehText(
                                          text: "Advanced Young Indian Health Checkup",
                                          fontColor: HexColor("#000000"),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ),


                                        SizedBox(height: 5,),

                                        TelehText(
                                          text: "Ideal for individuals aged 21-40 years",
                                          fontColor: HexColor("#677294"),
                                          fontWeight: FontWeight.w300,
                                          fontSize: 14,
                                        ),


                                        SizedBox(height: 10,),

                                        Container(
                                          width: 130,
                                          height: 32,
                                          decoration: BoxDecoration(border: Border.all(color: HexColor("#0EBE7E")),
                                          borderRadius: BorderRadius.circular(10)),
                                          child: Center(
                                            child: TelehText(
                                              text: "69 tests included",
                                              fontColor: HexColor("#0EBE7E"),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),





                                      ],
                                    ),



                                  ],
                                ),
                              ),




                              Padding(
                                padding: const EdgeInsets.only(top: 15,bottom: 10),
                                child: Container(
                                  width: double.infinity,
                                  height: 220,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("assets/images/testimg.png"),
                                    ),
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),



                              Padding(
                                padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Row(
                                          children: [
                                            TelehText(
                                              text: "\u0024" + " 358",
                                              fontColor: HexColor("#000000"),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                            ),


                                            SizedBox(width: 5,),

                                            TelehText(
                                              text: "\u0024" + " 330",
                                              fontColor: HexColor("#677294"),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                            ),

                                            SizedBox(width: 5,),

                                            TelehText(
                                              text: "35% off",
                                              fontColor: HexColor("#0EBE7E"),
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12,
                                            ),
                                          ],
                                        ),

                                        Row(
                                          children: [


                                            TelehText(
                                              text: "+ 10% Health cashback T&C",
                                              fontColor: HexColor("#677294"),
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12,
                                            ),


                                          ],
                                        ),

                                      ],
                                    ),





                                    Expanded(child: SizedBox()),



                                    InkWell(
                                      onTap: (){
                                        Navigator.push(
                                          context,
                                          PageRouteBuilder(
                                            pageBuilder: (c, a1, a2) =>  PatientDetailsPage(),
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
                                        height: 32,
                                        width: 110,
                                        decoration: BoxDecoration(
                                          color: HexColor("#0EBE7E"),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Center(
                                          child: TelehText(
                                            text: "Book Now",
                                            fontColor: HexColor("#FFFFFF"),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
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
                ),
              ),
            ),






          ],
        ),
      ),
    );

  }
}
