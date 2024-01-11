import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:telehconsult/helpers/teleh_text_style.dart';





class ChatScreenPage extends StatefulWidget {
  const ChatScreenPage({Key? key}) : super(key: key);

  @override
  State<ChatScreenPage> createState() => _ChatScreenPageState();
}

class _ChatScreenPageState extends State<ChatScreenPage> {



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: chatscreenform(),
        floatingActionButton: Chatfield(),
        floatingActionButtonLocation:
        FloatingActionButtonLocation.centerFloat,

      ),
    );
  }

  Widget chatscreenform(){
    return ShaderMask(
      shaderCallback: (bound) {
      return  LinearGradient(
          end: FractionalOffset.topCenter,
          begin: FractionalOffset.bottomCenter,
          colors: [
            Colors.black.withOpacity(0.99),
            Colors.black.withOpacity(0.55),
            Colors.black.withOpacity(0.11),
          ],
          stops: [
            0.1,
            0.3,
            0.45
          ])
          .createShader(bound);
    },
      blendMode: BlendMode.darken,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/chatd1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Padding(
                padding: const EdgeInsets.only(top: 40,right: 20,left: 20),
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
                            color: HexColor("#FFFFFF"),
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color:
                                Colors.grey.shade400.withOpacity(0.4), //color of shadow
                                spreadRadius: 2, //spread radius
                                blurRadius: 2, // blur radius
                                offset: Offset(0, 2), // changes position of shadow
                              ),
                              //you can set more BoxShadow() here
                            ],
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

                    Expanded(child: SizedBox()),

                    const SizedBox(
                      width: 36,
                      height: 36,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/prof.png"),
                        backgroundColor: Colors.white,
                      ),
                    ),

                  ],
                ),
              ),




              Padding(
                padding: const EdgeInsets.only(top: 300,right: 20,left: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [


                            const SizedBox(
                              width: 36,
                              height: 36,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/prof.png"),
                                backgroundColor: Colors.white,
                              ),
                            ),

                            SizedBox(width: 8,),


                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TelehText(
                                  text: "Everhart Tween",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),

                                TelehText(
                                  text: "Thanks for shareing doctor",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [


                            const SizedBox(
                              width: 36,
                              height: 36,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/prof.png"),
                                backgroundColor: Colors.white,
                              ),
                            ),

                            SizedBox(width: 8,),


                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TelehText(
                                  text: "Everhart Tween",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),

                                TelehText(
                                  text: "Thanks for shareing doctor",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [


                            const SizedBox(
                              width: 36,
                              height: 36,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/prof.png"),
                                backgroundColor: Colors.white,
                              ),
                            ),

                            SizedBox(width: 8,),


                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TelehText(
                                  text: "Everhart Tween",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),

                                TelehText(
                                  text: "Thanks for shareing doctor",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [


                            const SizedBox(
                              width: 36,
                              height: 36,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/prof.png"),
                                backgroundColor: Colors.white,
                              ),
                            ),

                            SizedBox(width: 8,),


                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TelehText(
                                  text: "Everhart Tween",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),

                                TelehText(
                                  text: "Thanks for shareing doctor",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [


                            const SizedBox(
                              width: 36,
                              height: 36,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/prof.png"),
                                backgroundColor: Colors.white,
                              ),
                            ),

                            SizedBox(width: 8,),


                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TelehText(
                                  text: "Everhart Tween",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),

                                TelehText(
                                  text: "Thanks for shareing doctor",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [


                            const SizedBox(
                              width: 36,
                              height: 36,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/prof.png"),
                                backgroundColor: Colors.white,
                              ),
                            ),

                            SizedBox(width: 8,),


                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TelehText(
                                  text: "Everhart Tween",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),

                                TelehText(
                                  text: "Thanks for shareing doctor",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [


                            const SizedBox(
                              width: 36,
                              height: 36,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/prof.png"),
                                backgroundColor: Colors.white,
                              ),
                            ),

                            SizedBox(width: 8,),


                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TelehText(
                                  text: "Everhart Tween",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),

                                TelehText(
                                  text: "Thanks for shareing doctor",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [


                            const SizedBox(
                              width: 36,
                              height: 36,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/prof.png"),
                                backgroundColor: Colors.white,
                              ),
                            ),

                            SizedBox(width: 8,),


                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TelehText(
                                  text: "Everhart Tween",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),

                                TelehText(
                                  text: "Thanks for shareing doctor",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [


                            const SizedBox(
                              width: 36,
                              height: 36,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/prof.png"),
                                backgroundColor: Colors.white,
                              ),
                            ),

                            SizedBox(width: 8,),


                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TelehText(
                                  text: "Everhart Tween",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),

                                TelehText(
                                  text: "Thanks for shareing doctor",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [


                            const SizedBox(
                              width: 36,
                              height: 36,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/prof.png"),
                                backgroundColor: Colors.white,
                              ),
                            ),

                            SizedBox(width: 8,),


                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TelehText(
                                  text: "Everhart Tween",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),

                                TelehText(
                                  text: "Thanks for shareing doctor",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [


                            const SizedBox(
                              width: 36,
                              height: 36,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/prof.png"),
                                backgroundColor: Colors.white,
                              ),
                            ),

                            SizedBox(width: 8,),


                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TelehText(
                                  text: "Everhart Tween",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),

                                TelehText(
                                  text: "Thanks for shareing doctor",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [


                            const SizedBox(
                              width: 36,
                              height: 36,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/prof.png"),
                                backgroundColor: Colors.white,
                              ),
                            ),

                            SizedBox(width: 8,),


                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TelehText(
                                  text: "Everhart Tween",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),

                                TelehText(
                                  text: "Thanks for shareing doctor",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [


                            const SizedBox(
                              width: 36,
                              height: 36,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/prof.png"),
                                backgroundColor: Colors.white,
                              ),
                            ),

                            SizedBox(width: 8,),


                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TelehText(
                                  text: "Everhart Tween",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),

                                TelehText(
                                  text: "Thanks for shareing doctor",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [


                            const SizedBox(
                              width: 36,
                              height: 36,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/prof.png"),
                                backgroundColor: Colors.white,
                              ),
                            ),

                            SizedBox(width: 8,),


                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TelehText(
                                  text: "Everhart Tween",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),

                                TelehText(
                                  text: "Thanks for shareing doctor",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [


                            const SizedBox(
                              width: 36,
                              height: 36,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/prof.png"),
                                backgroundColor: Colors.white,
                              ),
                            ),

                            SizedBox(width: 8,),


                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TelehText(
                                  text: "Everhart Tween",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),

                                TelehText(
                                  text: "Thanks for shareing doctor",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [


                            const SizedBox(
                              width: 36,
                              height: 36,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/prof.png"),
                                backgroundColor: Colors.white,
                              ),
                            ),

                            SizedBox(width: 8,),


                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TelehText(
                                  text: "Everhart Tween",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),

                                TelehText(
                                  text: "Thanks for shareing doctor",
                                  fontColor: HexColor("#FFFFFF"),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),
                )
              ),










            ],
          ),
        ),
      ),
    );

  }
}




class Chatfield extends StatelessWidget {
  void callmessage() {
    print('Message Icon Pressed...');
  }

  void callimoji() {
    print('Imogi Icon Pressed...');
  }



  Widget messageIcon() {
    return IconButton(
        icon: CircleAvatar(
          backgroundColor: HexColor("#0EBE7E"),
          radius: 44,
          child: const Icon(
            Icons.sms,
            color: Colors.white,
            size: 16,
          ),
        ),
        onPressed: () => callmessage());
  }



  Widget imogiicon() {
    return IconButton(
      icon:  Icon(Icons.tag_faces_sharp, color: HexColor("#677294CC"),size: 18,),
      onPressed: () => callimoji(),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      height: 54,
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(27.0),

              ),
              child: Row(
                children: [
                  messageIcon(),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Add a Comment......",
                          hintStyle: TextStyle(color: HexColor("#677294CC"),fontWeight: FontWeight.w300,fontSize: 14,fontFamily: "Rubik"),
                          border: InputBorder.none),
                    ),
                  ),

                  imogiicon(),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}