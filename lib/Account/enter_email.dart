import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../main.dart';
import './verify_phone.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Enter_email extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Enter_email> {

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isNoVisiblePassword = true;


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
            color: Color(0xFF764EBE),
            child: ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: height / 9),
                  child: Image.asset(
                    'assets/images/logo.png',
                    scale: 0.8,
                  ),
                ),
                Container(
                    margin:
                    EdgeInsets.only(top: height / 15, left: 30, right: 30),
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 30, bottom: 30),
                    decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(children: <Widget>[
                      TextField(
                          onChanged: (String value) {},
                          keyboardType: TextInputType.phone,
                          style: GoogleFonts.alice(fontSize: 20),
                          autofocus: false,
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  start: 20.0, end: 15),
                              child: Icon(FontAwesomeIcons.solidUserCircle,
                                  size: 30),
                            ),
                            labelText: '御社名',
                            contentPadding: EdgeInsets.all(20),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                BorderSide(color: Color(0xFFF2F0F4))),
                            filled: true,
                            fillColor: Color(0xFFF2F0F4),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    width: 2, color: Color(0xFF764EBE))),
                          )),
                      SizedBox(
                          height: 20
                      ),
                      Text(
                        'プレーンテキストのパスワードをこのメールアカウントに送信します。',
                        style: GoogleFonts.poppins(fontSize: 18),
                      ),
                      SizedBox(
                        height: 20
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFF7E57C2),
                          padding: EdgeInsets.only(top: 8, left: 35, bottom: 8, right: 35),
                          shadowColor: Color(0xFF555555),
                          elevation: 5,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30.0)),

                          ),
                        ),
                        onPressed: () {

                        },
                        child: Text(
                            '回復',
                            style: GoogleFonts.poppins(
                                fontSize: 30,
                                color: Color(0xFFFFFFFF)
                            )
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          //forgot password screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyApp()),
                          );
                        },
                        child: Text(
                          '戻る',
                          style: GoogleFonts.poppins(fontSize: 18),
                        ),
                      ),

                    ])),
              ],
            )));
  }
}

