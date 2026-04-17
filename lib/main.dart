import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getx/my_app.dart';

void main() {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // screen ko remove hony nhi dyta hai.. hold kr k rekhta hy
  // final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  //flutter native splash screen
  //FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  
  // prtrait up the device no horizontal
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    
  ]);

  runApp(const MyApp());
}
