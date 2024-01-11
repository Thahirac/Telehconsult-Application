import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:telehconsult/view/auth/login_page.dart';

import '../../helpers/teleh_text_style.dart';
import 'registration_page.dart';

class OnboardingInfo {
  final image;
  final title;
  final description;

  OnboardingInfo(this.image, this.title, this.description);
}


class IntroPage extends StatelessWidget {
  final controller = OnboardingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
                top: -10,
                child: Container(
                  height: 360,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(100),
                        bottomRight: Radius.circular(140),
                        topRight: Radius.circular(140),

                      ),
                      color: HexColor("#0EBE7E")),
                )),
            PageView.builder(
              physics: BouncingScrollPhysics(),
                onPageChanged: controller.selectedIndexPage,
                itemCount: controller.onboardingContents.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Container(
                                height: 350,
                                width: 350,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(controller
                                          .onboardingContents[index].image)),
                                )),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: 40,
                            width: 270,
                            child:
                            TelehText(
                              text: '${controller.onboardingContents[index].title}',
                              fontColor: HexColor("#333333"),
                              fontWeight: FontWeight.w500,
                              fontSize: 26,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width,
                              child:   TelehText(
                                text: '${controller.onboardingContents[index].description}',
                                fontColor: HexColor("#677294E5"),
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
            // Positioned(
            //   bottom: 140,
            //   left: 156,
            //   child: Row(
            //       children:
            //       List.generate(
            //           controller.onboardingContents.length,
            //               (index) =>
            //                   Obx(() {
            //             return Container(
            //               margin: const EdgeInsets.all(8),
            //               height: 10,
            //               width: 10,
            //               decoration: BoxDecoration(
            //                   shape: BoxShape.circle,
            //                   color:
            //                   controller.selectedIndexPage.value == index
            //                       ? Colors.deepPurpleAccent.shade200
            //                       : Colors.indigo.shade200
            //               ),
            //             );
            //           }))
            //   ),
            // ),


            Positioned(
                bottom: 0,
                right: 0,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {

                      },
                      child: Container(
                        height: 300,
                        width: 300,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/bg.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),



                  ],
                )),

            Positioned(
                bottom: 120,
                right: 0,
                left: 0,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (c, a1, a2) =>
                                  Login(),
                              transitionsBuilder: (context, animation, secondaryAnimation,
                                  child) {
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
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: HexColor("#0EBE7E")),
                          child:  Center(
                              child:
                              TelehText(
                                  text:"Get Started",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500
                              )
                          ),
                        ),
                      ),
                    ),


                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: InkWell(
                          onTap: (){
                            Navigator.pushReplacement(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (c, a1, a2) =>
                                    Login(),
                                transitionsBuilder: (context, animation, secondaryAnimation,
                                    child) {
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
                          child:  TelehText(
                              text:"Skip",
                              fontColor: HexColor("#677294"),
                              fontSize: 14,
                              fontWeight: FontWeight.w400
                          )
                      ),
                    ),


                  ],
                )),
          ],
        ),
      ),
    );
  }
}




class OnboardingController extends GetxController {
  var selectedIndexPage = 0.obs;

  List<OnboardingInfo> onboardingContents = [
    OnboardingInfo(
        'assets/images/d3.png',
        'Find Trusted Doctors',
        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.'),
    OnboardingInfo(
        'assets/images/d2.png',
        'Choose Best Doctors',
        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.'),
    OnboardingInfo(
        'assets/images/d1.png',
        'Easy Appointments',
        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.'),
  ];
}