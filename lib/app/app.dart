import 'package:ame/feature/ContactDetail.dart';
import 'package:flutter/cupertino.dart';
import 'homePage.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      // home: HomePage(),
      home: ContactDetail(),
    );
  }
}
