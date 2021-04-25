import 'package:flutter/cupertino.dart';
import 'package:exemplo_imc_bloc_conceitual/platform/platform.dart';

class IOSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: "IMC IOS",
      debugShowCheckedModeBanner: false,
      home: IOSHome('IMC IOS'),
    );
  }
}