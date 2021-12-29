import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_technique/app/app.router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(414, 896),
      minTextAdapt: true,
      builder: () => MaterialApp(
        title: 'Flutter Demo',

        // Construct the StackedRouter and set the onGenerateRoute function
        onGenerateRoute: StackedRouter().onGenerateRoute,
      ),
    );
  }
}
