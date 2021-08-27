import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 40,
        title: Text(
            "計測結果参照",
            style: GoogleFonts.poppins(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w400
            )
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 15
              ),
              Container(
                margin: EdgeInsets.only(left: 40),
                child: Text(
                  'バッテリー番号選択',
                  style: GoogleFonts.poppins(fontSize: 20),
                ),
              )
            ],
          )
        )
      ),
    );
  }

}
