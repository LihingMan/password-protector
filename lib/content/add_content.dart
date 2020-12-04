import 'package:flutter/material.dart';
import 'package:password_protector/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:password_protector/widgets/title_password_input_field.dart';
import 'package:path_provider/path_provider.dart';
import 'package:password_protector/content/content.dart';
import 'dart:io';
import 'dart:convert';

class AddContentPage extends StatefulWidget {
  @override
  _AddContentPageState createState() => _AddContentPageState();
}

class _AddContentPageState extends State<AddContentPage> {
  TextEditingController title = TextEditingController();
  TextEditingController contentInput = TextEditingController();
  Content newContent = Content();
  String filename = "passwords.json";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: new FloatingActionButton(
          onPressed: () => _saveContent,
          child: Text("Save"),
          backgroundColor: Colours.accept,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: ContentInput(
          title: title,
          contentInput: contentInput,
        ),
      ),
    );
  }

  Future<String> get _saveContent async {
    final directory = await getApplicationDocumentsDirectory();
    if (title.text == "" && contentInput.text == "") {
      print("here");
    }
    // newContent.contentTitle = title.text;
    // newContent.content = contentInput.text;
    //
    // Map<String, dynamic> json = newContent.toJson();
    // File file = new File(directory.path + "/" + filename);
    // file.createSync();
    // file.writeAsStringSync(jsonEncode(json));
    // Navigator.pop(context);
    return directory.path;
  }

  Future<String> getContentFile() async {
    final directory = await getApplicationDocumentsDirectory();
    File file = new File(directory.path + "/" + filename);
    String content = await file.readAsString();
    print(content);
    return content;
  }

  // void writeToFile(String hobbyy, String agee, String namee) {
  //   print("Writing to file!");
  //
  //   Map<String, dynamic> content = new Map();
  //   content1 = {name: namee};
  //   content2 = {age: agee};
  //   content3 = {hobby: hobbyy};
  //
  //   content.addAll(content1);
  //   content.addAll(content2);
  //   content.addAll(content3);
  //
  //   print(content);  //working fine
  // }
}
