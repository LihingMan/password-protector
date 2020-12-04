import 'package:flutter/material.dart';
import 'package:password_protector/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:password_protector/widgets/widgets.dart';
import 'package:password_protector/landing/key_details.dart';
import 'package:password_protector/content/password_list.dart';


class VerificationPage extends StatefulWidget {
  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  bool buttonDisabled = true;
  KeyDetails encryptKey = KeyDetails();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colours.white,
          appBar: AppBar(
            backgroundColor: Colours.white,
            title: Text(
              "Key Input",
              style: GoogleFonts.lato(
                fontSize: FontSizes.mainTitle,
                fontWeight: FontWeight.bold,
                color: Colours.black
              ),
            ),
            centerTitle: true,
            elevation: 5.0,
          ),
          body: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              Padding(
                padding: Paddings.startupMain,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: Dimensions.d_200),
                    Text(
                      "Enter your key",
                      style: TextStyle(fontSize: FontSizes.buttonText),
                    ),
                    InputField(
                        controller: encryptKey.key,
                        keyboardType: TextInputType.text,
                        isPassword: true,
                        onSubmitted: navigateToPasswordList
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }

  void navigateToPasswordList(String text){
    // print("here " + text);
    Navigator.pop(context);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PasswordPage())
    );
  }
}

