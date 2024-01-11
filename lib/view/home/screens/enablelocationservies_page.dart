import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:telehconsult/helpers/teleh_text_style.dart';
import 'package:flutter/cupertino.dart';
import '../../bottomnav/bottom_nav.dart';
import 'allmedicinorders_page.dart';
class LocationEnablePage extends StatefulWidget {
  const LocationEnablePage({Key? key}) : super(key: key);

  @override
  State<LocationEnablePage> createState() => _LocationEnablePageState();
}

class _LocationEnablePageState extends State<LocationEnablePage> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: locationenableform(),
      ),
    );
  }

  Widget locationenableform(){
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
                    text: "Enable Location Services",
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
                                width: 119,
                                height: 119,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/images/elslogo.png"),
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
                                text: "Location",
                                fontColor: HexColor("#222222"),
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),


                              SizedBox(height: 13,),

                              TelehText(
                                text: "Your location services are switched off. Please\nenable location, to help us serve better.",
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
                                      text: "Enable Location",
                                      fontColor: HexColor("#FFFFFF"),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                    style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: HexColor("#0EBE7E"),
                                    ),
                                    onPressed:() {
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                          pageBuilder: (c, a1, a2) => AllmedicinOrders(),
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
