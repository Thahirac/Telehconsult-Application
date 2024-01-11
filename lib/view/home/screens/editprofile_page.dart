import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:telehconsult/helpers/teleh_text_style.dart';
import 'package:flutter/cupertino.dart';
import '../../bottomnav/bottom_nav.dart';
import 'enablelocationservies_page.dart';
class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: medicineorderform(),
      ),
    );
  }

  Widget medicineorderform(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [HexColor("#6F7FA1"),HexColor("#536184"),]
          )
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
                    text: "Profile",
                    fontColor:  HexColor("#FFFFFF"),
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 100,left: 20),
              child: Row(
                children: [
                  TelehText(
                    text: "What is your name?",
                    fontColor: HexColor("#FFFFFF"),
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ],
              ),
            ),


             Padding(
              padding: EdgeInsets.only(top: 30,left: 20,right: 20),
              child: SizedBox(
                width: 335,
                child: TextField(
                  controller: TextEditingController(text: "Joseph Onunwa"),
                  style: TextStyle(color: HexColor("#FFFFFF"),fontSize: 18,fontFamily: "Rubik",fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white), //<-- SEE HERE
                    ),
                    focusedBorder:  UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white), //<-- SEE HERE
                    ),
                    hintText: 'Enter your name',
                   hintStyle: TextStyle(color: HexColor("#FFFFFF"),fontSize: 16,fontFamily: "Rubik",fontWeight: FontWeight.w300),
                  ),
                  cursorColor: Colors.white,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 40,left: 20),
              child: Row(
                children: [
                  TelehText(
                    text: "What is contact number?",
                    fontColor: HexColor("#FFFFFF"),
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ],
              ),
            ),


            Padding(
              padding: EdgeInsets.only(top: 30,left: 20,right: 20),
              child: SizedBox(
                width: 335,
                child: TextField(

                  style: TextStyle(color: HexColor("#FFFFFF"),fontSize: 18,fontFamily: "Rubik",fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white), //<-- SEE HERE
                    ),
                    focusedBorder:  UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white), //<-- SEE HERE
                    ),
                    hintText: 'Enter your contact number',
                    hintStyle: TextStyle(color: HexColor("#FFFFFF"),fontSize: 16,fontFamily: "Rubik",fontWeight: FontWeight.w300),
                  ),
                  cursorColor: Colors.white,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 40,left: 20),
              child: Row(
                children: [
                  TelehText(
                    text: "What is date of birth?",
                    fontColor: HexColor("#FFFFFF"),
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ],
              ),
            ),


            Padding(
              padding: EdgeInsets.only(top: 30,left: 20,right: 20),
              child: SizedBox(
                width: 335,
                child: TextField(
                  style: TextStyle(color: HexColor("#FFFFFF"),fontSize: 18,fontFamily: "Rubik",fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white), //<-- SEE HERE
                    ),
                    focusedBorder:  UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white), //<-- SEE HERE
                    ),
                    hintText: 'Enter your date of birth',
                    hintStyle: TextStyle(color: HexColor("#FFFFFF"),fontSize: 16,fontFamily: "Rubik",fontWeight: FontWeight.w300),
                  ),
                  cursorColor: Colors.white,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 40,left: 20),
              child: Row(
                children: [
                  TelehText(
                    text: "What is your location?",
                    fontColor: HexColor("#FFFFFF"),
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ],
              ),
            ),


            Padding(
              padding: EdgeInsets.only(top: 30,left: 20,right: 20),
              child: SizedBox(
                width: 335,
                child: TextField(
                  style: TextStyle(color: HexColor("#FFFFFF"),fontSize: 18,fontFamily: "Rubik",fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white), //<-- SEE HERE
                    ),
                    focusedBorder:  UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white), //<-- SEE HERE
                    ),
                    hintText: 'Enter your location',
                    hintStyle: TextStyle(color: HexColor("#FFFFFF"),fontSize: 16,fontFamily: "Rubik",fontWeight: FontWeight.w300),
                  ),
                  cursorColor: Colors.white,
                ),
              ),
            ),





          ],
        ),
      ),
    );

  }
}
