import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
//import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splashIconSize: 250,
        splash: Image.asset(
          'assets/jarvis.jpg',
        ),
        nextScreen: Covid(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.black,
        duration: 4000,
      ),
    );
  }
}

class Covid extends StatefulWidget {
  @override
  _CovidState createState() => _CovidState();
}

class _CovidState extends State<Covid> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Corona Tracker (NEPAL)'),
          backgroundColor: Colors.cyan,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: WebView(
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: 'https://www.coronatracker.com/country/nepal/',
          ),
        ),
      )
          //home: MyHomePage(title: 'Flutter Demo Home Page'),
          ),
    );
  }
}
