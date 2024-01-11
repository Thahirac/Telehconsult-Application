import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../helpers/teleh_text_style.dart';
import '../../view/home/screens/allmedicalrecords_page.dart';
import '../../view/home/screens/helpcenter_page.dart';
import '../../view/home/screens/medicalrecord_page.dart';
import '../../view/home/screens/medicineorder_page.dart';
import '../../view/home/screens/my_doctors.dart';
import '../../view/home/screens/privacy_policy.dart';
import '../../view/home/screens/profile_page.dart';
import '../../view/home/screens/settings_page.dart';
import '../../view/home/screens/testgooking_page.dart';

class drowerAfterlogin extends StatefulWidget {

  @override
  State<drowerAfterlogin> createState() => _drowerAfterloginState();
}

class _drowerAfterloginState extends State<drowerAfterlogin> {


  Widget _buildNavigationOption(
      String? title,
      String? image, {
        VoidCallback? onTap,
      }) {
    return InkWell(
      splashColor: Colors.white,
      focusColor: Colors.white,
      hoverColor: Colors.white,
      onTap: onTap,
      child: Container(
        height: 60,
        width: 212,
        child: Row(
          children: <Widget>[

            Image.asset(image!,height: 18,width: 18,),


            SizedBox(width: 20),


            TelehText(
              text:  '${title}',
              fontColor: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),


            Expanded(child: SizedBox()),


          Icon(
              Icons.arrow_forward_ios,
              color: HexColor("#FAFAFA"),
              size: 18,
            ),


          ],
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width - 40,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [HexColor("#6F7FA1"),HexColor("#536184"),]
          )
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 30,left: 20,right: 28),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (c, a1, a2) => Profile(),
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
                    child: const SizedBox(
                      width: 44,
                      height: 44,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/prof.png"),
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [

                      const TelehText(
                        text:   "Abdullah Mamun",
                        fontColor: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),

                      Row(
                        children: const [

                          Icon(Icons.call,color: Colors.white,size: 9,),

                          SizedBox(width: 3,),

                          TelehText(
                            text:     "01303-527300",
                            fontColor: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ],
                      ),


                    ],
                  ),


                  Expanded(child: SizedBox()),

                  Container(
                    margin: EdgeInsets.only(left: 20,),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: HexColor("#FF0000"),
                          shape: BoxShape.circle,
                        ),
                        margin: EdgeInsets.only(right: 0, top: 0),
                        child:  Center(
                          child: Icon(
                            Icons.close,
                            color: HexColor("#FFFFFF"),
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                  ),



                ],
              ),

              SizedBox(height: 54),

              _buildNavigationOption("My Doctors", "assets/images/di.png", onTap: () {

                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (c, a1, a2) => MyDoctors(),
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

              }),
              _buildNavigationOption("Medical Records", "assets/images/mri.png", onTap: () {

                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (c, a1, a2) => MedicalRecordPage(),
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

              }),
              _buildNavigationOption("Payments", "assets/images/pi.png", onTap: () {
              }),
              _buildNavigationOption("Medicine Orders", "assets/images/moi.png", onTap: () {

                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (c, a1, a2) => MedicineOrderPage(),
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



              }),
              _buildNavigationOption("Test Bookings", "assets/images/tbi.png", onTap: () {


                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (c, a1, a2) => TestBookingPage(),
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



              }),

              _buildNavigationOption("Privacy & Policy", "assets/images/ppi.png", onTap: () {

                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (c, a1, a2) => PrivacyPolicy(),
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



              }),

              _buildNavigationOption("Help Center", "assets/images/hci.png", onTap: () {

                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (c, a1, a2) => HelpCenter(),
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



              }),

              _buildNavigationOption("Settings", "assets/images/si.png", onTap: () {

                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (c, a1, a2) => SettingsPage(),
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

              }),




              SizedBox(height:50),





              InkWell(
                splashColor: Colors.white,
                onTap: () {

                    showDialog(
                      builder: (ctxt) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white70, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          titlePadding: EdgeInsets.only(right: 140,top: 30),
                          title:    TelehText(
                            text: "Log Out",
                            fontColor:  HexColor("#000000"),
                            fontWeight: FontWeight.w500,
                            fontSize: 26,
                          ),
                          content:    TelehText(
                            text: "Are you sure you want to logout?",
                            fontColor:  HexColor("#677294"),
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                 InkWell(
                                   onTap:(){
                                     Navigator.pop(context);
                        },
                                   child: Padding(
                                     padding: const EdgeInsets.all(20.0),
                                     child: TelehText(
                                        text: "Cancel",
                                        fontColor:  HexColor("#0EBE7E"),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                   ),
                                 ),



                                InkWell(
                                  onTap:(){
                                    Navigator.pop(context);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: TelehText(
                                      text: "Ok",
                                      fontColor:  HexColor("#0EBE7E"),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),


                              ],
                            ),
                          ],
                        );
                      },
                      context: context,
                    );


                },
                child: Container(
                  height: 60,
                  width: 212,
                  child: Row(
                    children: <Widget>[

                      Image.asset( "assets/images/loi.png",height: 18,width: 18,),


                      SizedBox(width: 20),


                      TelehText(
                        text:  'Logout',
                        fontColor: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),


                      Expanded(child: SizedBox()),


                      Icon(
                        Icons.arrow_forward_ios,
                        color: HexColor("#FAFAFA"),
                        size: 18,
                      ),


                    ],
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}