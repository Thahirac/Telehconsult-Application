import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../helpers/teleh_text_style.dart';
import '../bottomnav/bottom_nav.dart';


class Favourate extends StatefulWidget {
  const Favourate({Key? key}) : super(key: key);

  @override
  State<Favourate> createState() => _FavourateState();
}

class _FavourateState extends State<Favourate> {
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: favform(),
      ),
    );
  }

  Widget favform(){
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
                        Navigator.push(
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
                    text: "Favourite Doctors",
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
              padding: const EdgeInsets.only(left: 20,top: 20,right: 20),
              child: SizedBox(
                height: 360,
                child: GridView.builder(
                    gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10
                    ),
                    itemCount: 14,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context,int index){
                      return Container(
                        height: 140,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: HexColor("#FFFFFF"),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [


                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 9,top: 9),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(child: SizedBox()),

                                  Icon(Icons.favorite,color: HexColor("#FB0000"),size: 17,),

                                ],
                              ),
                            ),



                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Container(
                                  width: 84,
                                  height: 84,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("assets/images/fd1.png"),
                                      ),
                                      color: Colors.grey.shade200,
                                      shape: BoxShape.circle),
                                ),

                              ],
                            ),



                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 19,bottom: 12),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  Column(
                                    children: [
                                      TelehText(
                                        text: "Dr. Shouey",
                                        fontColor: HexColor("#333333"),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                      ),

                                      SizedBox(height: 3,),

                                      Row(
                                        children: [

                                          TelehText(
                                            text: "Specalist Cardiology",
                                            fontColor: HexColor("#0EBE7E"),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                          ),

                                        ],
                                      ),


                                    ],
                                  ),



                                ],
                              ),
                            ),







                          ],
                        ),
                      );
                    }
                ),
              ),
            ),






            Padding(
                padding: const EdgeInsets.only(left: 20,top: 30,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TelehText(
                      text: "Feature Doctor",
                      fontColor: HexColor("#333333"),
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),



                    Row(
                      children: [
                        TelehText(
                          text: "See all",
                          fontColor: HexColor("#677294"),
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                        ),

                        Icon(Icons.arrow_forward_ios_outlined,color: HexColor("#677294"),size: 10,)
                      ],
                    ),


                  ],
                )
            ),


            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: SizedBox(
                height: 140,
                child: ListView.builder(
                    itemCount: 6,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context,int index){
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          height: 140,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: HexColor("#FFFFFF"),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [


                              Padding(
                                padding: const EdgeInsets.only(left: 10,right: 9,top: 9),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Icon(Icons.favorite_outline_sharp,color: HexColor("#777EA5"),size: 12,),


                                    Expanded(child: SizedBox()),

                                    Icon(Icons.star,color: HexColor("#F6D060"),size: 12,),

                                    SizedBox(width: 3,),

                                    TelehText(
                                      text: "2.9",
                                      fontColor: HexColor("#333333"),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                    ),

                                  ],
                                ),
                              ),



                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  Container(
                                    width: 54,
                                    height: 54,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage("assets/images/fd1.png"),
                                        ),
                                        color: Colors.grey.shade200,
                                        shape: BoxShape.circle),
                                  ),

                                ],
                              ),



                              Padding(
                                padding: const EdgeInsets.only(left: 20,right: 19,bottom: 12),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Column(
                                      children: [
                                        TelehText(
                                          text: "Dr. Crick",
                                          fontColor: HexColor("#333333"),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                        ),

                                        SizedBox(height: 3,),

                                        Row(
                                          children: [

                                            TelehText(
                                              text: "\u0024",
                                              fontColor: HexColor("#0EBE7E"),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 10,
                                            ),


                                            TelehText(
                                              text: "25.00/ hours",
                                              fontColor: HexColor("#677294CC"),
                                              fontWeight: FontWeight.w300,
                                              fontSize: 9,
                                            ),

                                          ],
                                        ),


                                      ],
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

