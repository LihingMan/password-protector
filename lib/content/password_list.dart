import 'package:flutter/material.dart';
import 'package:password_protector/widgets/widgets.dart';
import 'package:password_protector/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart';
import 'package:password_protector/content/add_content.dart';

class PasswordPage extends StatefulWidget {
  @override
  _PasswordPageState createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  List<CardView> cards = <CardView>[];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: new FloatingActionButton(
          onPressed: () => moveToAddContent(),
          child: new Icon(Icons.add),
        ),
        appBar: AppBar(
            title: Text(
              "Passwords",
              style: GoogleFonts.lato(
                  fontSize: FontSizes.mainTitle,
                  fontWeight: FontWeight.bold,
                  color: Colours.black
              ),
            ),
            backgroundColor: Colours.white,
            centerTitle: true,
            elevation: 5.0
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: cards.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 200.0,
                    width: 50.0,
                    margin: EdgeInsets.all(2.0),
                    child: cards[index],
                  );
                },
              ),
            )
          ],
        )
      ),
    );
  }

  // Future<String> get _localPath async {
  //   final directory = await getApplicationDocumentsDirectory();
  //   print(directory.path);
  //   return directory.path;
  // }
  //
  // // update the screen to show added card
  // void func(){
  //   cards.add(CardView(cardTitle: "Title3", cardContent: "trgddgf@gmail.com\npassword123", onTap: () => _localPath,));
  //   setState(() {});
  // }

  // function to navigate to page to add new password
  void moveToAddContent(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AddContentPage())
    );
  }
}
