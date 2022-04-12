import 'package:flutter/material.dart';
import 'package:listview_flutter/constant/Constant.dart';
import 'package:listview_flutter/screen/home_screen.dart';
import 'package:listview_flutter/screen/splash_screen.dart';

void main() => runApp(
      MaterialApp(
        title: 'ListView Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
              .copyWith(secondary: const Color(0xFF761322)),
        ),
        home: const SplashScreen(),
        routes: <String, WidgetBuilder>{
          splashScreen: (BuildContext context) => const SplashScreen(),
          homeScreen: (BuildContext context) => HomeScreen(),
        },
      ),
    );
