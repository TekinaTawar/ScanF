// import 'package:ScanF/screens/create_profile_screen/landing_page.dart';
import './profile_screens.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            // textDirection: TextDirection.ltr,
            children: <Widget>[
              Expanded(
                child: SizedBox(),
                flex: 4,
              ),
              Divider(
                color: Colors.black45,
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 20,
                  right: 20,
                  bottom: 0,
                ),
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    fontFamily: "Open_Sans",
                    fontStyle: FontStyle.normal,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.left,
                ),
                alignment: Alignment.centerLeft,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 7,
                  horizontal: 20,
                ),
                child: Text(
                  "Enter your phone number to proceed",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                alignment: Alignment.centerLeft,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    hintText: "enter 10 digit number \n +91",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xff1A5B94),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CreateProf()),
                    );
                  },
                  child: Container(
                    child: Align(
                        child: Text(
                      "ENTER PHONE NUMBER",
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: "Open_Sans",
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
              ),
              Align(
                child: Text(
                  "OR",
                  style: TextStyle(
                    fontFamily: "Open_Sans",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                height: 55,
                margin: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(5),
                  color: Color(0xff3C66C4),
                ),
                child: GestureDetector(
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Image.asset("assets/images/dosa.jpg"),
                        Align(
                            child: Text(
                          "   Login With Facebook",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Open_Sans",
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        )),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 55,
                margin: EdgeInsets.symmetric(vertical: 2.5, horizontal: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(5),
                  color: Color(0xffCF4332),
                ),
                child: GestureDetector(
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Image.asset("assets/images/dosa.jpg"),
                        Align(
                            child: Text(
                          "   Sign in With Google+",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Open_Sans",
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        )),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(child: SizedBox(), flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
