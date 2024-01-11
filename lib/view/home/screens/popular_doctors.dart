import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../helpers/teleh_text_style.dart';
import '../../../widgets/drower/drower_page.dart';
import '../../bottomnav/bottom_nav.dart';
import 'doctorsCatergory_page.dart';
class PopularDoctorsPage extends StatefulWidget {
  const PopularDoctorsPage({Key? key}) : super(key: key);

  @override
  State<PopularDoctorsPage> createState() => _PopularDoctorsPageState();
}

class _PopularDoctorsPageState extends State<PopularDoctorsPage> {

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

                  Expanded(child: SizedBox()),

                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.search_rounded,
                      color: HexColor("#677294"),
                      size: 25,
                    ),
                  ),
                ],
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
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: SizedBox(
                height: 200,
                child: ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context,int index){
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          height: 200,
                          width: 136,
                          child: Column(
                            children: [
                              Container(
                                width: 131.0,
                                child: Image.asset(
                                  "assets/images/pd1.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 131.0,
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
                                        fontSize: 14,
                                      ),

                                      TelehText(
                                        text: "Medicine Specialist",
                                        fontColor: HexColor("#677294CC"),
                                        fontWeight: FontWeight.w300,
                                        fontSize: 10,
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
                      text: "Category",
                      fontColor: HexColor("#333333"),
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),



                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (c, a1, a2) => DoctorsCategory(),
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
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: SizedBox(
                height: 500,
                child: ListView.builder(
                    itemCount: 6,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context,int index){
                      return Padding(
                        padding: const EdgeInsets.only(right: 20,top: 10),
                        child: Container(
                          height: 104,
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
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [

                                        Container(
                                          width: 82,
                                          height: 82,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage("assets/images/fd1.png"),
                                            ),
                                            color: Colors.grey.shade200,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                        ),

                                      ],
                                    ),

                                    SizedBox(width: 15,),

                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        TelehText(
                                          text: "Dr. Fillerup Grab",
                                          fontColor: HexColor("#333333"),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                        ),

                                        SizedBox(height: 5,),

                                        TelehText(
                                          text: "Medicine Specialist",
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [

                                    Icon(Icons.favorite_outline_sharp,color: HexColor("#777EA5"),size: 14,),


                                    Expanded(child: SizedBox()),





                                    Row(
                                      children: [
                                        TelehText(
                                          text: "2.4",
                                          fontColor: HexColor("#333333"),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10,
                                        ),


                                        TelehText(
                                          text: " (2475 views)",
                                          fontColor: HexColor("#677294"),
                                          fontWeight: FontWeight.w300,
                                          fontSize: 9,
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
