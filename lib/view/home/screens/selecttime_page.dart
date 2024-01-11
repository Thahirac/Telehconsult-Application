import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:telehconsult/helpers/teleh_text_style.dart';


class TimeSlotesModal {
  String? date;
  String? slote;
  bool? isSelected;
  String? anslote;
  String? evngslote;


  TimeSlotesModal({this.date,this.slote,this.isSelected = false,this.anslote,this.evngslote});
}


class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {

  List<TimeSlotesModal> timeslotes = [];
  List<TimeSlotesModal> aftnoontimeslotes = [];
  List<TimeSlotesModal> evngtimeslotes = [];


  int pd = 0;
  screensPd(int no) {
    switch (no) {
      case 0:
        return bookingform();
      case 1:
        return nextavailablebookingform();
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    timeslotes = [
      TimeSlotesModal(date: "Today, 23 Feb",slote: "No slots available",),
      TimeSlotesModal(date: "Tomorrow, 24 Feb",slote: "9 slots available", isSelected: true,),
      TimeSlotesModal(date: "Thu, 25 Feb",slote: "10 slots available",),
    ];

    aftnoontimeslotes = [
      TimeSlotesModal(anslote: "1:00 PM",),
      TimeSlotesModal(anslote: "1:30 PM",),
      TimeSlotesModal(isSelected: true,anslote: "2:00 PM",),
      TimeSlotesModal(anslote: "2:30 PM"),
      TimeSlotesModal(anslote: "3:00 PM"),
      TimeSlotesModal(anslote: "3:30 PM"),
      TimeSlotesModal(anslote: "4:00 PM"),

    ];

    evngtimeslotes = [
      TimeSlotesModal(evngslote: "5:00 PM"),
      TimeSlotesModal(isSelected: true,evngslote: "5:30 PM"),
      TimeSlotesModal(evngslote: "6:00 PM"),
      TimeSlotesModal(evngslote: "6:30 PM"),
      TimeSlotesModal(evngslote: "7:00 PM"),

    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screensPd(pd),
      ),
    );
  }

  Widget bookingform(){
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
              padding: const EdgeInsets.only(top: 40,left: 20),
              child: Row(
                children: [
                  Container(
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
                    text: "Select Time",
                    fontColor:  HexColor("#333333"),
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 40,left:20,right: 20),
              child: Row(
                children: [
                  Container(
                    height: 104,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),

                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color:
                          Colors.grey.withOpacity(0.5), //color of shadow
                          spreadRadius: 2, //spread radius
                          blurRadius: 3, // blur radius
                          offset: Offset(0, 2), // changes position of shadow
                          //first paramerter of offset is left-right
                          //second parameter is top to down
                        ),
                        //you can set more BoxShadow() here
                      ],

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
                                    text: "Dr. Shruti Kedia",
                                    fontColor: HexColor("#333333"),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),

                                  SizedBox(height: 5,),

                                  TelehText(
                                    text: "Upasana Dental Clinic, salt lake",
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

                              Icon(Icons.favorite,color: HexColor("#FF0000"),size: 16,),


                              Expanded(child: SizedBox()),






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
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: SizedBox(
                height: 54,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: timeslotes.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: InkWell(
                          onTap: () {
                            timeslotes[index].isSelected = true;
                            for (int i = 0; i < timeslotes.length; i++) {
                              if (i == index) {
                              } else {
                                timeslotes[i].isSelected = false;
                              }
                            }
                            setState(() {});
                          },
                          child: Container(
                            height:54,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color:  timeslotes[index].isSelected == true
                                  ? HexColor("#0EBE7E")
                                  : Colors.transparent,
                              border: Border.all(color: timeslotes[index].isSelected == true ? Colors.transparent : Colors.grey.shade300)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15,right: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  TelehText(
                                    text: timeslotes[index].date,
                                    fontColor:
                                    timeslotes[index].isSelected == true
                                        ? Colors.white
                                        : HexColor("#333333"),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),

                                  SizedBox(height: 4,),

                                  TelehText(
                                    text: timeslotes[index].slote,
                                    fontColor:
                                    timeslotes[index].isSelected == true
                                        ? Colors.white
                                        : HexColor("#677294"),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TelehText(
                text:"Today, 23 Feb",
                fontColor:HexColor("#333333"),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 23),
              child: TelehText(
                text:"No slots available",
                fontColor:HexColor("#677294"),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: 306,
                height: 54,
                child: TextButton(
                  child: TelehText(
                    text: "Next availability on wed, 24 Feb",
                    fontColor: HexColor("#FFFFFF"),
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: HexColor("#0EBE7E"),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
                  ),
                  onPressed:() {
                    setState(() {
                      pd = 1;
                    });


                  },
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 14),
              child: TelehText(
                text:"OR",
                fontColor:HexColor("#677294"),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 13),
              child: Container(
                width: 306,
                height: 54,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),border: Border.all(color: HexColor("#0EBE7E"),)),
                child: TextButton(
                  child: TelehText(
                    text: "Contact Clinic",
                    fontColor: HexColor("#0EBE7E"),
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                  style: TextButton.styleFrom(
                      primary:  HexColor("#0EBE7E"),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6),),
                  ),
                  onPressed:() {

                  },
                ),
              ),
            ),

          ],
        ),
      ),
    );

  }

  Widget nextavailablebookingform(){
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
              padding: const EdgeInsets.only(top: 40,left: 20),
              child: Row(
                children: [
                  Container(
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
                    text: "Select Time",
                    fontColor:  HexColor("#333333"),
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 40,left:20,right: 20),
              child: Row(
                children: [
                  Container(
                    height: 104,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),

                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color:
                          Colors.grey.withOpacity(0.5), //color of shadow
                          spreadRadius: 2, //spread radius
                          blurRadius: 3, // blur radius
                          offset: Offset(0, 2), // changes position of shadow
                          //first paramerter of offset is left-right
                          //second parameter is top to down
                        ),
                        //you can set more BoxShadow() here
                      ],

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
                                    text: "Dr. Shruti Kedia",
                                    fontColor: HexColor("#333333"),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),

                                  SizedBox(height: 5,),

                                  TelehText(
                                    text: "Upasana Dental Clinic, salt lake",
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

                              Icon(Icons.favorite,color: HexColor("#FF0000"),size: 16,),


                              Expanded(child: SizedBox()),






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
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: SizedBox(
                height: 54,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: timeslotes.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: InkWell(
                          onTap: () {
                            timeslotes[index].isSelected = true;
                            for (int i = 0; i < timeslotes.length; i++) {
                              if (i == index) {
                              } else {
                                timeslotes[i].isSelected = false;
                              }
                            }
                            setState(() {});
                          },
                          child: Container(
                            height:54,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color:  timeslotes[index].isSelected == true
                                    ? HexColor("#0EBE7E")
                                    : Colors.transparent,
                                border: Border.all(color: timeslotes[index].isSelected == true ? Colors.transparent : Colors.grey.shade300)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15,right: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  TelehText(
                                    text: timeslotes[index].date,
                                    fontColor:
                                    timeslotes[index].isSelected == true
                                        ? Colors.white
                                        : HexColor("#333333"),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),

                                  SizedBox(height: 4,),

                                  TelehText(
                                    text: timeslotes[index].slote,
                                    fontColor:
                                    timeslotes[index].isSelected == true
                                        ? Colors.white
                                        : HexColor("#677294"),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TelehText(
                text:"Today, 23 Feb",
                fontColor:HexColor("#333333"),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 35,left: 20),
              child: Row(
                children: [
                  TelehText(
                    text:"Afternoon 7 slots",
                    fontColor:HexColor("#333333"),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 20,top: 16,right: 20),
              child: SizedBox(
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: aftnoontimeslotes.length,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context,int index){
                      return InkWell(
                        onTap: (){
                          aftnoontimeslotes[index].isSelected = true;
                          for (int i = 0; i < aftnoontimeslotes.length; i++) {
                            if (i == index) {
                            } else {
                              aftnoontimeslotes[i].isSelected = false;
                            }
                          }
                          setState(() {});
                        },
                        child: Container(
                          height: 40,
                          width: 76,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color:  aftnoontimeslotes[index].isSelected == true
                                ? HexColor("#0EBE7E")
                                : HexColor("#0EBE7E14"),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: TelehText(
                                text:  aftnoontimeslotes[index].anslote,
                                fontColor: aftnoontimeslotes[index].isSelected == true
                                    ? Colors.white
                                    : HexColor("#0EBE7E"),
                                fontSize:  aftnoontimeslotes[index].isSelected == true ? 13 : 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      );
                    }
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20,left: 20),
              child: Row(
                children: [
                  TelehText(
                    text:"Evening 5 slots",
                    fontColor:HexColor("#333333"),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 20,top: 16,right: 20),
              child: SizedBox(
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: evngtimeslotes.length,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context,int index){
                      return InkWell(
                        onTap: (){
                          evngtimeslotes[index].isSelected = true;
                          for (int i = 0; i < evngtimeslotes.length; i++) {
                            if (i == index) {
                            } else {
                              evngtimeslotes[i].isSelected = false;
                            }
                          }
                          setState(() {});
                        },
                        child: Container(
                          height: 40,
                          width: 76,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color:  evngtimeslotes[index].isSelected == true
                                ? HexColor("#0EBE7E")
                                : HexColor("#0EBE7E14"),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: TelehText(
                                text:  evngtimeslotes[index].evngslote,
                                fontColor: evngtimeslotes[index].isSelected == true
                                    ? Colors.white
                                    : HexColor("#0EBE7E"),
                                fontSize:  evngtimeslotes[index].isSelected == true ? 13 : 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
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
