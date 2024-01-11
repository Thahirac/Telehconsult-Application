import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:telehconsult/helpers/teleh_text_style.dart';
import 'package:flutter/cupertino.dart';
import '../../bottomnav/bottom_nav.dart';
class AllMedicalRecords extends StatefulWidget {
  const AllMedicalRecords({Key? key}) : super(key: key);

  @override
  State<AllMedicalRecords> createState() => _AllMedicalRecordsState();
}

class _AllMedicalRecordsState extends State<AllMedicalRecords> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: mydoctorslistform(),
          floatingActionButtonLocation:
          FloatingActionButtonLocation.centerFloat,
        floatingActionButton:

        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Container(
            width: 270,
            height: 54,
            child: TextButton(
              child: TelehText(
                text: "Add a record",
                fontColor: HexColor("#FFFFFF"),
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: HexColor("#0EBE7E"),
              ),
              onPressed:() {

              },
            ),
          ),
        )

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
                    text: "All Records",
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
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context,int index){
                      return Padding(
                        padding: const EdgeInsets.only(right: 20,top: 10),
                        child: Container(
                          //height: 170,
                          height: 110,
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
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Container(
                                          width: 55,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            color: HexColor("#0EBE7E"),
                                            borderRadius: BorderRadius.circular(7),
                                          ),
                                         child: Center(
                                            child:   TelehText(
                                              text: "27\nFEB",
                                              fontColor: HexColor("FFFFFF"),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),

                                        SizedBox(height: 5,),

                                        Container(
                                          width: 55,
                                          height: 22,
                                          decoration: BoxDecoration(
                                            color: HexColor("#0EBE7F1A"),
                                            borderRadius: BorderRadius.circular(7),
                                          ),
                                          child: Center(
                                            child:   TelehText(
                                              text: "NEW",
                                              fontColor: HexColor("#0EBE7E"),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),


                                      ],
                                    ),

                                    SizedBox(width: 15,),

                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 15),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          TelehText(
                                            text: "Records added by you",
                                            fontColor: HexColor("#333333"),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                          ),


                                          SizedBox(height: 5,),

                                          TelehText(
                                            text: "Record for Abdullah mamun",
                                            fontColor: HexColor("#0EBE7E"),
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12,
                                          ),


                                          SizedBox(height: 5,),

                                          TelehText(
                                            text: "1 Prescription",
                                            fontColor: HexColor("#677294"),
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12,
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

                                    Icon(Icons.more_vert_rounded,color: HexColor("#677294"),size: 18,),


                                    Expanded(child: SizedBox()),





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
