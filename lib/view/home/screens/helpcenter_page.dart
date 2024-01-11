import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../helpers/teleh_text_style.dart';



class MedicinesOrDer {
  String? name;

  MedicinesOrDer({this.name});
}


class HelpCenter extends StatefulWidget {
  const HelpCenter({Key? key}) : super(key: key);

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  var searchController = TextEditingController();

  List<MedicinesOrDer> medicinegrid = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    medicinegrid = [
      MedicinesOrDer(name: "Booking a new Appointment",),
      MedicinesOrDer(name: "Online consultations",),
      MedicinesOrDer(name: "Feedbacks",),
      MedicinesOrDer(name: "Medicine orders",),
      MedicinesOrDer(name: "Diagnostic Tests",),
      MedicinesOrDer(name: "Health plans",),
      MedicinesOrDer(name: "My account and Practo Drive",),
      MedicinesOrDer(name: "Have a feature in mind",),
      MedicinesOrDer(name: "Other issues",),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: helpcenterform(),
      ),
    );
  }

  Widget helpcenterform(){
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
                    text: "Help center",
                    fontColor:  HexColor("#333333"),
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ],
              ),
            ),


            Padding(
              padding: EdgeInsets.only(top: 38,left: 20,right: 20),
              child: Container(
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Row(
                    children: [
                      TelehText(
                        text: 'I have an issue with',
                        fontColor: HexColor("#0EBE7E"),
                        fontWeight: FontWeight.w300,
                        fontSize: 18,
                      ),
                    ],
                  ),
                )
              ),
            ),



            Padding(
              padding: const EdgeInsets.only(top: 30,),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: medicinegrid.length,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context,int index){
                      return Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            TelehText(
                              text: '${medicinegrid[index].name}',
                              fontColor: HexColor("#677294"),
                              fontWeight: FontWeight.w300,
                              fontSize: 18,
                            ),


                            Icon(
                              Icons.arrow_forward_ios,
                              color: HexColor("#677294"),
                              size: 13,
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

