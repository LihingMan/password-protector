import 'package:flutter/material.dart';
import 'package:password_protector/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart';

class CardView extends StatefulWidget {

  final String cardTitle;
  final String cardContent;
  final onTap;

  const CardView({Key key, this.cardTitle, this.cardContent, this.onTap}) : super(key: key);

  @override
  _CardViewState createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0)
      ),
      child: InkWell(
        splashColor: Colours.blue,
        onTap: widget.onTap,
        child: Column(
          children: <Widget>[
            ListTile(
                title: Text(
                  widget.cardTitle,
                  style: GoogleFonts.lato(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colours.black
                  ),

                ),
                subtitle: Text(
                  widget.cardContent,
                  style: GoogleFonts.lato(
                      fontSize: FontSizes.normal,
                      color: Colours.black
                  ),
                )
            )
          ],
        ),
      )
    );
  }

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    print(directory.path);
    return directory.path;
  }
}


