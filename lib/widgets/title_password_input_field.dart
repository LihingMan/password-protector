import 'package:flutter/material.dart';
import 'package:password_protector/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentInput extends StatefulWidget {
  final TextEditingController title;
  final TextEditingController contentInput;

  const ContentInput({Key key, @required this.title, @required this.contentInput}) : super(key: key);

  @override
  _ContentInputState createState() => _ContentInputState();
}

class _ContentInputState extends State<ContentInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colours.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            controller: widget.title,
            maxLines: 1,
            style: TextStyle(
              fontSize: 30.0
            ),
            decoration: InputDecoration(
              hintText: "Title",
              contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 3.0),
            ),
          ),
          // SizedBox(height: 200.0),
          Expanded(
            child: TextField(
              controller: widget.contentInput,
              maxLines: null,
              expands: true,
              style: TextStyle(
                  fontSize: 20.0
              ),
              // textAlignVertical: TextAlignVertical.top,
              decoration: InputDecoration(
                hintText: "Content",
                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 3.0),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: Colours.white)
                )
              ),
            ),
          ),
          Padding(
            padding: Paddings.vertical_5,
          )
        ],
      ),
    );
  }
}


