import 'package:datepicker_dropdown/datepicker_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:telehconsult/helpers/teleh_text_style.dart';
import 'package:flutter/cupertino.dart';
import '../../bottomnav/bottom_nav.dart';
import 'allmedicinorders_page.dart';
class PatientDetailsPage extends StatefulWidget {
  const PatientDetailsPage({Key? key}) : super(key: key);

  @override
  State<PatientDetailsPage> createState() => _PatientDetailsPageState();
}

class _PatientDetailsPageState extends State<PatientDetailsPage> {


  int? val = -1;

  var name_Controller = TextEditingController();
  var number_Controller = TextEditingController();
  var email_Controller = TextEditingController();

  int? day;
  int? month;
  int? year;

  int pd = 0;
  screensPd(int no) {
    switch (no) {
      case 0:
        return emptytestform();
      case 1:
        return patientaddtestform();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: screensPd(pd),
      ),
    );
  }

  Widget emptytestform(){
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
                    text: "Patient Details",
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
                // height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [

                      SizedBox(height: 80,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                            width: 214,
                            height: 214,
                            decoration: BoxDecoration(
                              color: HexColor("#C6EFE5"),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child:          Container(
                                width: 112,
                                height: 90,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/images/pdicon.png"),
                                  ),
                                ),
                              ),
                            ),
                          ),



                        ],
                      ),

                      SizedBox(height: 80,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [


                              TelehText(
                                text: "Your cart is empty",
                                fontColor: HexColor("#222222"),
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),



                              SizedBox(height: 25,),

                              Padding(
                                padding: const EdgeInsets.only(bottom: 0),
                                child: Container(
                                  width: 270,
                                  height: 54,
                                  child: TextButton(
                                    child: TelehText(
                                      text: "Add Tests",
                                      fontColor: HexColor("#FFFFFF"),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                    style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: HexColor("#0EBE7E"),
                                    ),
                                    onPressed:() {
                                      setState(() {
                                        pd = 1;
                                      });


                                    },
                                  ),
                                ),
                              )

                            ],
                          )

                        ],
                      ),

                    ],
                  )
              ),
            ),





          ],
        ),
      ),
    );

  }


  Widget patientaddtestform(){
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
                    text: "Patient Details",
                    fontColor:  HexColor("#333333"),
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ],
              ),
            ),




            Padding(
              padding: const EdgeInsets.only(top: 30,right: 5,left: 5),
              child: Container(
                //height: 170,
                height: 38,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: HexColor("#FFFFFF"),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [





                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TelehText(
                        text: "Step 1/4",
                        fontColor: HexColor("#000000"),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),




                    Padding(
                      padding: EdgeInsets.only(bottom: 15,top: 15),
                      child: LinearPercentIndicator(
                        barRadius: Radius.circular(10),
                        backgroundColor: Colors.green.shade100,
                        width: 280,
                        animation: true,
                        lineHeight: 5.0,
                        animationDuration: 500,
                        percent: 0.25,
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        progressColor: HexColor("#0EBE7E"),
                      ),
                    ),











                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30,right: 5,left: 5),
              child: Container(
                //height: 170,
                height: 518,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: HexColor("#FFFFFF"),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [


                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 25),
                      child: TelehText(
                        text: "Patient’s Name",
                        fontColor: HexColor("#000000"),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),


                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10), //border corner radius
                      ),
                      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: TextFormField(
                        controller: name_Controller,
                        keyboardType: TextInputType.emailAddress,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Name',
                          hintStyle:
                          TextStyle(color: Colors.grey.shade600, fontSize: 14),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding:
                          const EdgeInsets.only(left: 14.0, bottom: 6.0, top: 8.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 15),
                      child: TelehText(
                        text: "Age",
                        fontColor: HexColor("#000000"),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),



                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 10),
                      child: SizedBox(
                        width: 335,
                        child: DropdownDatePicker(

                          isExpanded: true,
                          inputDecoration: InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey, width: 1.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: HexColor("#0EBE7E"), width: 1.0),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(7))), // optional
                          isDropdownHideUnderline: true, // optional
                          isFormValidator: true, // optional
                          startYear: 1900, // optional
                          endYear: 2022, // optional
                          width: 5, // optional
                          selectedDay: day, // optional
                          selectedMonth: month, // optional
                          selectedYear: year, // optional
                          onChangedDay: (value) {
                            setState(() {
                              day = value as int?;
                            });
                          },
                          onChangedMonth: (value) {
                            setState(() {
                              month = value as int?;
                            });
                          },
                          onChangedYear: (value) {
                            setState(() {
                              year = value as int?;
                            });
                          },
                          //boxDecoration: BoxDecoration(
                          // border: Border.all(color: Colors.grey, width: 1.0)), // optional
                          //showDay: false,// optional
                          dayFlex: 2,// optional
                          monthFlex: 2,// optional
                          yearFlex: 2,// optional
                          hintDay: 'Day', // optional
                          hintMonth: 'Month', // optional
                          hintYear: 'Year', // optional
                          hintTextStyle: TextStyle(color: HexColor("#677294"),fontSize: 10,fontFamily: "Rubik",fontWeight: FontWeight.w400), // optional

                        ),
                      ),
                    ),



                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 15),
                      child: TelehText(
                        text: "Gender",
                        fontColor: HexColor("#000000"),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),


                Row(
                  children: <Widget>[
                    Radio(
                      value: 1,
                      groupValue: val,
                      onChanged: (value) {
                        setState(() {
                          val = value;
                        });
                      },
                      activeColor: HexColor("#0EBE7E"),
                    ),

                    TelehText(
                      text: "Male",
                      fontColor: HexColor("#677294"),
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),

                    Radio(
                      value: 2,
                      groupValue: val,
                      onChanged: (value) {
                        setState(() {
                          val = value;
                        });
                      },
                      activeColor: HexColor("#0EBE7E"),
                    ),


                    TelehText(
                      text: "Female",
                      fontColor: HexColor("#677294"),
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),


                    Radio(
                      value: 3,
                      groupValue: val,
                      onChanged: (value) {
                        setState(() {
                          val = value;
                        });
                      },
                      activeColor: HexColor("#0EBE7E"),
                    ),

                    TelehText(
                      text: "Others",
                      fontColor: HexColor("#677294"),
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),


                  ],
                ),



                Padding(
                      padding: const EdgeInsets.only(left: 10,top: 15),
                      child: TelehText(
                        text: "Mobile Number",
                        fontColor: HexColor("#000000"),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),



                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10), //border corner radius
                      ),
                      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: TextFormField(
                        controller: number_Controller,
                        keyboardType: TextInputType.emailAddress,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Number',
                          hintStyle:
                          TextStyle(color: Colors.grey.shade600, fontSize: 14),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding:
                          const EdgeInsets.only(left: 14.0, bottom: 6.0, top: 8.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 15),
                      child: TelehText(
                        text: "Email",
                        fontColor: HexColor("#000000"),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),



                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10), //border corner radius
                      ),
                      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: TextFormField(
                        controller: email_Controller,
                        keyboardType: TextInputType.emailAddress,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        // validator: (value) {
                        //   if (value == null || value.isEmpty) {
                        //     return "Please enter email address";
                        //   }
                        //   if (!RegExp(
                        //       r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        //       .hasMatch(value)) {
                        //     return "Please enter valid email address";
                        //   }
                        // },
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                          hintStyle:
                          TextStyle(color: Colors.grey.shade600, fontSize: 14),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding:
                          const EdgeInsets.only(left: 14.0, bottom: 6.0, top: 8.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),






                  ],
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(bottom: 10,top: 40),
              child: Container(
                width: 270,
                height: 54,
                child: TextButton(
                  child: TelehText(
                    text: "Continue",
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


          ],
        ),
      ),
    );

  }

}


