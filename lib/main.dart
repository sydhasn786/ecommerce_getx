import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:getx/my_app.dart';
import 'package:getx/screens/counter.dart';
import 'package:getx/screens/data.dart';
import 'package:getx/screens/home.dart';
import 'package:getx/screens/plantScreen/splash_screen.dart';
import 'package:getx/screens/travelUI/mainTravel.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  
  // screen ko remove hony nhi dyta hai.. hold kr k rekhta hy
 // final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  //flutter native splash screen
  //FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}
