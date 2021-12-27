import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 650,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/img_splash.png'),
                    fit: BoxFit.cover
                  )
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('images/ic_splash.png',
                      width: 38,
                      height: 38,),
                      SizedBox(width: 20,),
                      Text('photo',
                      style: GoogleFonts.comfortaa(
                        textStyle: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.w400
                        ),
                      ))
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/sign-in');
                      },
                      child: Container(
                        height: 52,
                        width: 167,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.black, width: 2)
                        ),
                        child: Center(
                          child: Text('LOG IN',
                          style: TextStyle(
                            fontSize: 13
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/sign-up');
                      },
                      child: Container(
                        height: 52,
                        width: 167,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.black
                        ),
                        child: Center(
                          child: Text('REGISTER',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white
                          ),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}