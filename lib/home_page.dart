import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'app_translations_delegate.dart';
import 'language_selector_page.dart';
import 'application.dart';




class HomePage extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}






class _MyAppState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
appBar: AppBar(),
      body: IconButton(
        icon: Icon(
          Icons.settings,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return LanguageSelectorPage();
              },
            ),
          );
        },
      ),

    );
  }
}





