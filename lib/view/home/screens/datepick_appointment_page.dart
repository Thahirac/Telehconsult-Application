import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:telehconsult/helpers/teleh_text_style.dart';
import 'package:flutter/cupertino.dart';
import '../../bottomnav/bottom_nav.dart';
import 'allmedicalrecords_page.dart';


class TimeSlotesModal {
  bool? isSelected;
  String? atime;
  String? rmebefore;


  TimeSlotesModal({this.isSelected = false,this.atime,this.rmebefore});
}



class DatepickappointmentPage extends StatefulWidget {
  const DatepickappointmentPage({Key? key}) : super(key: key);

  @override
  State<DatepickappointmentPage> createState() => _DatepickappointmentPageState();
}

class _DatepickappointmentPageState extends State<DatepickappointmentPage> {

  List<TimeSlotesModal> availableTime = [];
  List<TimeSlotesModal> remindermebefore = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    availableTime = [
      TimeSlotesModal( atime: "10:00\nAM",),
      TimeSlotesModal( atime: "12:00\nAM",),
      TimeSlotesModal(isSelected: true, atime: "02:00\nPM",),
      TimeSlotesModal(atime: "03:00\nPM"),
      TimeSlotesModal(atime: "04:00\nPM"),

    ];

    remindermebefore = [
      TimeSlotesModal(rmebefore: "30\nMinit"),
      TimeSlotesModal(rmebefore: "40\nMinit"),
      TimeSlotesModal(isSelected: true,rmebefore: "25\nMinit"),
      TimeSlotesModal( rmebefore: "10\nMinit"),
      TimeSlotesModal( rmebefore: "35\nMinit"),

    ];
  }

  Widget uploadrecordbottombar() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        boxShadow: [
          BoxShadow(color: Colors.grey, spreadRadius: 0, blurRadius: 10),
        ],
      ),
      height: MediaQuery.of(context).size.height * 0.46,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 35,left: 20,right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TelehText(
                    text: "Available Time",
                    fontColor: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),


                  Padding(
                    padding: const EdgeInsets.only(top: 25,bottom: 20),
                    child: SizedBox(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          itemCount: availableTime.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: InkWell(
                                onTap: () {
                                  availableTime[index].isSelected = true;
                                  for (int i = 0; i < availableTime.length; i++) {
                                    if (i == index) {
                                    } else {
                                      availableTime[i].isSelected = false;
                                    }
                                  }
                                  setState(() {});
                                },
                                child: Container(
                                  height:60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:  availableTime[index].isSelected == true
                                          ? HexColor("#0EBE7E")
                                          : HexColor("#0EBE7E14"),
                                  ),
                                  child:  Center(
                                    child: TelehText(
                                      text: availableTime[index].atime,
                                      fontColor:
                                      availableTime[index].isSelected == true
                                          ? Colors.white
                                          : HexColor("#0EBE7E"),
                                      fontSize: availableTime[index].isSelected == true ? 14 : 13,
                                      fontWeight:  availableTime[index].isSelected == true ? FontWeight.w500 : FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),



                  const TelehText(
                    text: "Reminder Me Before",
                    fontColor: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 25,bottom: 30),
                    child: SizedBox(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          itemCount:  remindermebefore.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: InkWell(
                                onTap: () {
                                  remindermebefore[index].isSelected = true;
                                  for (int i = 0; i <  remindermebefore.length; i++) {
                                    if (i == index) {
                                    } else {
                                      remindermebefore[i].isSelected = false;
                                    }
                                  }
                                  setState(() {});
                                },
                                child: Container(
                                  height:60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:   remindermebefore[index].isSelected == true
                                        ? HexColor("#0EBE7E")
                                        : HexColor("#0EBE7E14"),
                                  ),
                                  child:  Center(
                                    child: TelehText(
                                      text:  remindermebefore[index].rmebefore,
                                      fontColor:
                                      remindermebefore[index].isSelected == true
                                          ? Colors.white
                                          : HexColor("#0EBE7E"),
                                      fontSize: remindermebefore[index].isSelected == true ? 14 : 13,
                                      fontWeight:  remindermebefore[index].isSelected == true ? FontWeight.w500 : FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),



                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 270,
                        height: 54,
                        child: TextButton(
                          child: TelehText(
                            text: "Confirm",
                            fontColor: HexColor("#FFFFFF"),
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                          style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: HexColor("#0EBE7E"),
                          ),
                          onPressed:() {

                            showDialog(
                              builder: (ctxt) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(color: Colors.white70, width: 1),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  icon:  Container(
                                    width: 156,
                                    height: 156,
                                    decoration: BoxDecoration(
                                      color: HexColor("#C6EFE5"),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child:          Container(
                                        width: 72,
                                        height: 69,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage("assets/images/like.png"),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  title:    Column(
                                    children: [
                                      TelehText(
                                        text: "Thank You !",
                                        fontColor:  HexColor("#000000"),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 26,
                                      ),

                                     SizedBox(height: 10,),

                                      TelehText(
                                        text: "Your Appointment Successful",
                                        fontColor:  HexColor("#677294"),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                      ),
                                    ],
                                  ),
                                  content:    TelehText(
                                    text: "You booked an appointment with Dr.Pediatrician Purpieson on February 21,at 02:00 PM",
                                    fontColor:  HexColor("#677294"),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                  actions: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 270,
                                          height: 54,
                                          child: TextButton(
                                            child: TelehText(
                                              text: "Done",
                                              fontColor: HexColor("#FFFFFF"),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18,
                                            ),
                                            style: TextButton.styleFrom(
                                              primary: Colors.white,
                                              backgroundColor: HexColor("#0EBE7E"),
                                            ),
                                            onPressed:() {

                                               Navigator.pop(context);


                                            },
                                          ),
                                        ),
                                      ],
                                    ),


                                    SizedBox(height: 18,),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap:(){

                                          },
                                          child: TelehText(
                                            text: "Edit your appointment",
                                            fontColor: HexColor("#677294"),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 35,),
                                  ],
                                );
                              },
                              context: context,
                            );



                          },
                        ),
                      ),
                    ],
                  ),


                ],
              ),
            )),
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: datepickform(),
        bottomSheet: uploadrecordbottombar(),
      ),
    );
  }

  Widget datepickform(){
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
                    text: "Appointment",
                    fontColor:  HexColor("#333333"),
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ],
              ),
            ),


             Padding(
              padding: EdgeInsets.only(left: 20,top: 20,right: 20),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white,

                  boxShadow: [
                    BoxShadow(
                      color:
                      Colors.grey.shade400.withOpacity(0.2), //color of shadow
                      spreadRadius: 1, //spread radius
                      blurRadius: 1, // blur radius
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                    //you can set more BoxShadow() here
                  ],

                ),
                child: SfDateRangePicker(
                  selectionMode: DateRangePickerSelectionMode.single,
                 headerStyle: DateRangePickerHeaderStyle(backgroundColor: HexColor("#0EBE7E"),textStyle: TextStyle(fontFamily: "Rubik",fontSize: 16,fontWeight: FontWeight.w500),),
                  selectionColor: HexColor("#0EBE7E"),
                  headerHeight: 52,
                  todayHighlightColor: HexColor("#0EBE7E"),
                  enablePastDates: false,
                  showNavigationArrow: true,
                  monthViewSettings: DateRangePickerMonthViewSettings(dayFormat: 'EE',firstDayOfWeek: 1,viewHeaderHeight: 45,),
                ),
              ),
            ),






          ],
        ),
      ),
    );

  }
}
