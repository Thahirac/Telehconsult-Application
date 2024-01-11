import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:telehconsult/helpers/teleh_text_style.dart';


class CetegoryTab {
  String? name;
  bool? isSelected;


  CetegoryTab({this.name, this.isSelected = false,});
}


class DoctorsCategory extends StatefulWidget {
  const DoctorsCategory({Key? key}) : super(key: key);

  @override
  State<DoctorsCategory> createState() => _DoctorsCategoryState();
}

class _DoctorsCategoryState extends State<DoctorsCategory> {

  List<CetegoryTab> categoryTab = [];

  var searchController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    categoryTab = [
      CetegoryTab(name: "All", isSelected: true,),
      CetegoryTab(name: "Dentist",),
      CetegoryTab(name: "Cardiology",),
      CetegoryTab(name: "physio Therapy",),
      CetegoryTab(name: "Dermetology",),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: categoryform(),
      ),
    );
  }

  Widget categoryform(){
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
                    text: "Doctors",
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
              padding: const EdgeInsets.only(left: 15,top: 20),
              child: SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: categoryTab.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: InkWell(
                          onTap: () {
                            categoryTab[index].isSelected = true;
                            for (int i = 0; i < categoryTab.length; i++) {
                              if (i == index) {
                              } else {
                            categoryTab[i].isSelected = false;
                              }
                            }
                            setState(() {});
                          },
                          child: Container(
                              height:36,
                            decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(6),
                              color:  categoryTab[index].isSelected == true
                                  ? HexColor("#0EBE7E")
                                  : HexColor("#0EBE7E14"),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15),
                                child: TelehText(
                                  text: categoryTab[index].name,
                                  fontColor:
                                  categoryTab[index].isSelected == true
                                      ? Colors.white
                                      : HexColor("#0EBE7E"),
                                  fontSize: 14,
                                  fontWeight: categoryTab[index].isSelected == true
                                      ? FontWeight.w500 : FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child: ListView.builder(
                    itemCount: 5,
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
