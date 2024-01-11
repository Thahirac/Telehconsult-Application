import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../helpers/teleh_text_style.dart';




class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: privacyform(),
      ),
    );
  }

  Widget privacyform(){
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
                    text: "Privacy policy",
                    fontColor:  HexColor("#333333"),
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
              child: Row(
                children: [
                  TelehText(
                    text: "Doctor Hunt Apps Privacy Policy",
                    fontColor:  HexColor("#677294"),
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ],
              ),
            ),


            Padding(
              padding: EdgeInsets.only(top: 15,left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  TelehText(
                    fontSize: 14, alignment:TextAlign.justify,
                    text: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words believable. It is a long established fact that reader will distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a moreIt is a long established fact that reader will distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more\n\n●\tThe standard chunk of lorem Ipsum used since  1500s is reproduced below for those interested.\n\n●\tSections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum. The point of using.\n\n●\t Lorem Ipsum is that it has a moreIt is a long established fact that reader will distracted.\n\n●\tThe point of using Lorem Ipsum is that it has a moreIt is a long established fact that reader will distracted.\n\nIt is a long established fact that reader distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a moreIt is a long established. ",




                   fontColor: HexColor("#959CB4"),
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),











          ],
        ),
      ),
    );

  }
}

