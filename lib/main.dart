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
    //the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: Size(414, 896),
      minTextAdapt: true,
      builder: () => MaterialApp(
        title: 'Test Technique',
        theme: ThemeData(
          textTheme: TextTheme(
              button: TextStyle(fontSize: 45.sp)
          ),
        ),

        // Construct the StackedRouter and set the onGenerateRoute function
        onGenerateRoute: StackedRouter().onGenerateRoute,
      ),
    );
  }
}
