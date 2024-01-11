import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../helpers/teleh_text_style.dart';



class MedicinesOrDer {
  String? img;
  String? name;

  MedicinesOrDer({this.img, this.name});
}


class AllmedicinOrders extends StatefulWidget {
  const AllmedicinOrders({Key? key}) : super(key: key);

  @override
  State<AllmedicinOrders> createState() => _AllmedicinOrdersState();
}

class _AllmedicinOrdersState extends State<AllmedicinOrders> {
  var searchController = TextEditingController();

  List<MedicinesOrDer> medicinegrid = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    medicinegrid = [
      MedicinesOrDer(img:"assets/images/gtmo.png",name: "Guide to medicine\norder",),
      MedicinesOrDer(img:"assets/images/prilogo.png",name: "Prescription related\nissues",),
      MedicinesOrDer(img:"assets/images/oslogo.png",name: "Order status",),
      MedicinesOrDer(img:"assets/images/odlogo.png",name: "Order delivery",),
      MedicinesOrDer(img:"assets/images/parlogo.png",name: "Payments & Refunds",),
      MedicinesOrDer(img:"assets/images/orlogo.png",name: "Order returns",),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: allmedicineform(),
      ),
    );
  }

  Widget allmedicineform(){
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
                    text: "Medicines orders",
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
              padding: const EdgeInsets.only(left: 25,top: 30,right: 25,),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        // childAspectRatio: 3 / 2,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15
                    ),
                    itemCount: medicinegrid.length,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context,int index){
                      return Container(
                        height: 160,
                        width: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: HexColor("#FFFFFF"),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [




                            Container(
                              width: 76,
                              height: 76,
                              decoration: BoxDecoration(
                                  color: HexColor("#C6EFE5"),
                                  shape: BoxShape.circle),

                              child: Center(
                                child:       Container(
                                  width: 24,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(medicinegrid[index].img.toString()),
                                      ),
                                  ),
                                ),
                              ),
                            ),


                            SizedBox(height: 10,),

                            TelehText(
                              text: '${medicinegrid[index].name}',
                              fontColor: HexColor("#677294"),
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),



                          ],
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

