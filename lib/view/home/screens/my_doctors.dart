import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:telehconsult/helpers/teleh_text_style.dart';

import '../../bottomnav/bottom_nav.dart';
import 'selecttime_page.dart';
class MyDoctors extends StatefulWidget {
  const MyDoctors({Key? key}) : super(key: key);

  @override
  State<MyDoctors> createState() => _MyDoctorsState();
}

class _MyDoctorsState extends State<MyDoctors> {
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: mydoctorslistform(),
      ),
    );
  }

  Widget mydoctorslistform(){
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
                    text: "My Doctors",
                    fontColor:  HexColor("#333333"),
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ],
              ),
            ),


            Container(
              padding: EdgeInsets.only(left: 20, right: 20,top: 38),
              child: TextField(
                controller:  searchController,
                onChanged: (val) {
                },
                cursorColor: HexColor("59595B"),
                style: TextStyle(color: HexColor("59595B"),),
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.close,
                    color: HexColor("59595B"),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: HexColor("59595B"),
                  ),
                  border: InputBorder.none,
                  //floatingLabelBehavior: true,
                  hintText:  "Search..... ",
                  hintStyle: TextStyle(
                    color: HexColor("59595B"),
                    fontSize: 15,
                  ),
                  filled: true,
                  fillColor: HexColor("#FFFFFF"),

                  contentPadding: const EdgeInsets.only(left: 14.0, bottom: 0.0, top: 16.0),

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:  HexColor("#FFFFFF"),),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:  HexColor("#FFFFFF"),),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child: ListView.builder(
                    itemCount: 6,
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
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Container(
                                          width: 87,
                                          height: 92,
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage("assets/images/fd1.png"),
                                            ),
                                            color: Colors.grey.shade200,
                                            borderRadius: BorderRadius.circular(2),
                                          ),
                                        ),

                                        SizedBox(height: 10,),

                                        TelehText(
                                          text: "Next Available",
                                          fontColor: HexColor("#0EBE7E"),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13,
                                        ),

                                        SizedBox(height: 5,),

                                        TelehText(
                                          text: "12:00 AM tomorrow",
                                          fontColor: HexColor("#677294"),
                                          fontWeight: FontWeight.w300,
                                          fontSize: 9,
                                        ),


                                      ],
                                    ),

                                    SizedBox(width: 15,),

                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          TelehText(
                                            text: "Dr. Tranquilli",
                                            fontColor: HexColor("#333333"),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18,
                                          ),


                                          SizedBox(height: 5,),

                                          TelehText(
                                            text: "Specilist medicine",
                                            fontColor: HexColor("#0EBE7E"),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13,
                                          ),


                                          SizedBox(height: 5,),

                                          TelehText(
                                            text: "8 Years experience ",
                                            fontColor: HexColor("#677294"),
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12,
                                          ),


                                          SizedBox(height: 5,),

                                          Padding(
                                            padding: const EdgeInsets.only(top: 4),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Icon(Icons.circle,color: HexColor("#0EBE7E"),size: 10,),
                                                TelehText(
                                                  text: " 87%",
                                                  fontColor: HexColor("#677294"),
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 11,
                                                ),

                                                SizedBox(width: 4,),

                                                Icon(Icons.circle,color: HexColor("#0EBE7E"),size: 10,),
                                                TelehText(
                                                  text: " 69 Patient Stories",
                                                  fontColor: HexColor("#677294"),
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 11,
                                                ),

                                              ],
                                            ),
                                          ),




                                        ],
                                      ),
                                    ),



                                  ],
                                ),
                              ),



                              Padding(
                                padding: const EdgeInsets.only(top: 16,right: 16,bottom: 16),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [

                                    Icon(Icons.favorite_outline_sharp,color: HexColor("#777EA5"),size: 16,),


                                    Expanded(child: SizedBox()),



                                    InkWell(
                                      onTap: (){
                                        Navigator.push(
                                          context,
                                          PageRouteBuilder(
                                            pageBuilder: (c, a1, a2) => BookingPage(),
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
                                        height: 30,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          color: HexColor("#0EBE7E"),
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                        child: Center(
                                          child: TelehText(
                                            text: "Book Now",
                                            fontColor: HexColor("#FFFFFF"),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 9,
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
