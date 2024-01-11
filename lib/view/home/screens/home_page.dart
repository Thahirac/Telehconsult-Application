import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:telehconsult/view/home/screens/chat_screen.dart';
import 'package:telehconsult/view/home/screens/popular_doctors.dart';

import '../../../helpers/teleh_text_style.dart';
import '../../../widgets/drower/drower_page.dart';
import 'doctordetails_page.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var searchController = TextEditingController();

  GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _key,
        drawer: drowerAfterlogin(),
        body: homeform(),
      ),
    );
  }

  Widget homeform(){
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
            SizedBox(height: 150,
            child: Stack(
              children: [
                Container(
                  height: 126,
                  decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.centerRight,
                      colors: [HexColor("#0EBE7E"),HexColor("#07D9AD"),]
                    )

                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(19.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            TelehText(
                              text: "Hi Handwerker! ",
                              fontColor: HexColor("#FAFAFA"),
                              fontWeight: FontWeight.w300,
                              fontSize: 20,
                            ),


                            TelehText(
                              text: "Find Your Doctor",
                              fontColor:  HexColor("#FFFFFF"),
                              fontWeight: FontWeight.w700,
                              fontSize: 25,
                            ),

                          ],
                        ),

                        Expanded(child: SizedBox()),

                        Column(
                          children: [

                            GestureDetector(
                              onTap: (){
                                _key.currentState!.openDrawer();
                             },
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("assets/images/prof.png"),
                                    ),
                                    color: Colors.grey.shade200,
                                    shape: BoxShape.circle),
                              ),
                            ),

                          ],
                        ),

                      ],
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(left: 20, right: 20,top: 100),
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


              ],
            )

              ),


            Padding(
                padding: const EdgeInsets.only(left: 20,top: 30),
                child: Row(
                  children: [
                    TelehText(
                      text: "Live Doctors",
                      fontColor: HexColor("#333333"),
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ],
                )
            ),


            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: SizedBox(
                height: 170,
                child: ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context,int index){
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (c, a1, a2) => ChatScreenPage(),
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
                          height: 168,
                          width: 116.48,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image: AssetImage("assets/images/ld1.png"),fit: BoxFit.cover),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15,left: 55),
                                child: Container(
                                  height: 17,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: HexColor("#FA002F"),
                                  ),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [

                                        Container(
                                          height: 6,
                                          width: 6,
                                          decoration: BoxDecoration(
                                           shape: BoxShape.circle,
                                            color: HexColor("#FFFFFF"),
                                          ),
                                        ),

                                        SizedBox(width: 3,),

                                        const TelehText(
                                          text: "LIVE",
                                          fontColor: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 7,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 40,),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,),
                                  child: Center(
                                    child: Icon(Icons.play_circle_outlined,color: HexColor("#FFFFFF"),size: 40,),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    );
                  }
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 20,top: 30),
              child: SizedBox(
                height: 100,
                child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(right: 10),
                       child: Container(
                         height: 100,
                         width: 90,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           image: DecorationImage(image: AssetImage("assets/images/teeth.png"),fit: BoxFit.cover),
                         ),
                       ),
                     ),

                     Padding(
                       padding: const EdgeInsets.only(right: 10),
                       child: Container(
                         height: 100,
                         width: 90,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           image: DecorationImage(image: AssetImage("assets/images/heart.png"),fit: BoxFit.cover),
                         ),
                       ),
                     ),

                     Padding(
                       padding: const EdgeInsets.only(right: 10),
                       child: Container(
                         height: 100,
                         width: 90,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           image: DecorationImage(image: AssetImage("assets/images/eye.png"),fit: BoxFit.cover),
                         ),
                       ),
                     ),

                     Padding(
                       padding: const EdgeInsets.only(right: 10),
                       child: Container(
                         height: 100,
                         width: 90,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           image: DecorationImage(image: AssetImage("assets/images/skin.png"),fit: BoxFit.cover),
                         ),
                       ),
                     ),


                   ],
                ),
              ),
            ),


            Padding(
                padding: const EdgeInsets.only(left: 20,top: 30,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TelehText(
                      text: "Popular Doctor",
                      fontColor: HexColor("#333333"),
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),



                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (c, a1, a2) => PopularDoctorsPage(),
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
                      child: Row(
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
                    ),


                  ],
                )
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: SizedBox(
                height: 264,
                child: ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context,int index){
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (c, a1, a2) => DoctorDetails(),
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
                            height: 264,
                            width: 190,
                            child: Column(
                              children: [
                                Container(
                                  height: 180.0,
                                  width: 190,
                                  child: Image.asset(
                                    "assets/images/pd1.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: 190,
                                    decoration: BoxDecoration(
                                      color: HexColor("#FFFFFF"),
                                      borderRadius: const BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10)),
                                    ),

                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        TelehText(
                                          text: "Dr. Fillerup Grab",
                                          fontColor: HexColor("#333333"),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                        ),

                                        TelehText(
                                          text: "Medicine Specialist",
                                          fontColor: HexColor("#677294CC"),
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12,
                                        ),


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

                                  ),
                                )
                              ],
                            ),
                          ),
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
