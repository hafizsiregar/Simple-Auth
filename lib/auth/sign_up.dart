import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {

  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 104, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Register',
            style: GoogleFonts.comfortaa(
              textStyle: TextStyle(
                fontSize: 36,
              ),
            ),),
            SizedBox(height: 32,),
            Container(
              padding: EdgeInsets.only(left: 17),
              height: 52,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2)
              ),
              child: Center(
                child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Tulis Email Kamu',
                    hintStyle: TextStyle(
                      fontSize: 15
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16,),
            Container(
              padding: EdgeInsets.only(left: 17),
              height: 52,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2)
              ),
              child: Center(
                child: TextFormField(
                  controller: passController,
                  obscureText: true,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Tulis Password Kamu',
                    hintStyle: TextStyle(
                      fontSize: 15
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            InkWell(
              onTap: () {},
              child: Container(
                height: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.black
                ),
                child: Center(
                  child: Text('LOG IN',
                  style: TextStyle(
                    color: Colors.white
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}