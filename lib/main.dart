import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:uiproject/backbtn.dart';
import 'testing.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.indigo,
        fontFamily: "Ubuntu",
      ),
      home: UIpage(),
    );
  }
}

class UIpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.white));
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          leading: BackWidget(),
          title: Text(
            "Service Details",
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ChatSymbol(),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: FirstColumn(),
            ),
            SixthColumn(),
            SizedBox(
              height: 10.0,
            ),
            SecondColumn(),
            SizedBox(
              height: 10.0,
            ),
            ThirdColumn(),
            SizedBox(
              height: 10.0,
            ),
            FifthColumn(),
            SizedBox(
              height: 10.0,
            ),
            FourthColumn(),
          ],
        ),
      ),
    );
  }
}
