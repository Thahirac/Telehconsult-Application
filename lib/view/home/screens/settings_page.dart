import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../helpers/teleh_text_style.dart';


class SettingsModal {
  String? img;
  String? name;

  SettingsModal({this.img,this.name});
}


class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool status1= false;
  bool status2= false;

  List<SettingsModal> settingsitems = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    settingsitems = [
      SettingsModal(img: "assets/images/cpicon.png",name: "Change Password",),
      SettingsModal(img:"assets/images/nicon.png",name: "Notifications",),
      SettingsModal(img: "assets/images/sicon.png",name: "Statistics",),
      SettingsModal(img: "assets/images/auicon.png",name: "About us",),
    ];




  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: settingsform(),
      ),
    );
  }

  Widget settingsform(){
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
                    text: "Settings",
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
                    text: "Account settings",
                    fontColor:  HexColor("#677294"),
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ],
              ),
            ),




            Padding(
              padding: const EdgeInsets.only(top: 25,),
              child: SizedBox(
                // height: MediaQuery.of(context).size.height * 0.8,
                child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemCount: settingsitems.length,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context,int index){
                      return Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                             SizedBox(
                              width: 32,
                              height: 32,
                              child: CircleAvatar(
                                backgroundImage: AssetImage('${settingsitems[index].img}'),
                                backgroundColor: Colors.white,
                              ),
                            ),

                            SizedBox(width: 10,),

                            TelehText(
                              text: '${settingsitems[index].name}',
                              fontColor: HexColor("#677294"),
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                            ),


                            Expanded(child: SizedBox()),

                            Icon(
                              Icons.arrow_forward_ios,
                              color: HexColor("#677294"),
                              size: 13,
                            ),


                          ],
                        ),
                      );
                    },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      //height spacing of divider
                      thickness: 0.5, //thickness of divier line
                      indent: 20, //spacing at the start of divider
                      endIndent: 20, //
                    );
                  },
                ),
              ),
            ),



            Padding(
              padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
              child: Row(
                children: [
                  TelehText(
                    text: "More options",
                    fontColor:  HexColor("#677294"),
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 10,),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          TelehText(
                            text: 'Text messages',
                            fontColor: HexColor("#677294"),
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                          ),


                          Expanded(child: SizedBox()),


                          CupertinoSwitch(
                            value:status1,
                            onChanged: (value) {
                              setState(() {
                                status1 = value;
                              });
                            },
                          ),





                        ],
                      ),
                    ),

                    const Divider(
                      //height spacing of divider
                      thickness: 0.5, //thickness of divier line
                      indent: 20, //spacing at the start of divider
                      endIndent: 20, //
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          TelehText(
                            text: 'Phone calls',
                            fontColor: HexColor("#677294"),
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                          ),


                          Expanded(child: SizedBox()),


                          CupertinoSwitch(
                            value:status2,
                            onChanged: (value) {
                              setState(() {
                                status2 = value;
                              });
                            },
                          ),





                        ],
                      ),
                    ),

                    const Divider(
                      //height spacing of divider
                      thickness: 0.5, //thickness of divier line
                      indent: 20, //spacing at the start of divider
                      endIndent: 20, //
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          TelehText(
                            text: 'Languages',
                            fontColor: HexColor("#677294"),
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                          ),


                          Expanded(child: SizedBox()),


                          TelehText(
                            text: 'English',
                            fontColor: HexColor("#677294"),
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                          ),

                          SizedBox(width: 5,),

                          Icon(
                            Icons.arrow_forward_ios,
                            color: HexColor("#677294"),
                            size: 13,
                          ),





                        ],
                      ),
                    ),

                    const Divider(
                      //height spacing of divider
                      thickness: 0.5, //thickness of divier line
                      indent: 20, //spacing at the start of divider
                      endIndent: 20, //
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          TelehText(
                            text: 'Currency',
                            fontColor: HexColor("#677294"),
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                          ),


                          Expanded(child: SizedBox()),

                          TelehText(
                            text: '\u0024' + '-USD',
                            fontColor: HexColor("#677294"),
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                          ),

                          SizedBox(width: 5,),

                          Icon(
                            Icons.arrow_forward_ios,
                            color: HexColor("#677294"),
                            size: 13,
                          ),


                        ],
                      ),
                    ),

                    const Divider(
                      //height spacing of divider
                      thickness: 0.5, //thickness of divier line
                      indent: 20, //spacing at the start of divider
                      endIndent: 20, //
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          TelehText(
                            text: 'Linked accounts',
                            fontColor: HexColor("#677294"),
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                          ),


                          Expanded(child: SizedBox()),


                          TelehText(
                            text: 'Facebook, Google',
                            fontColor: HexColor("#677294"),
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                          ),

                          SizedBox(width: 5,),

                          Icon(
                            Icons.arrow_forward_ios,
                            color: HexColor("#677294"),
                            size: 13,
                          ),



                        ],
                      ),
                    ),
                  ],

                ),
              ),
            ),


          ],
        ),
      ),
    );

  }
}

