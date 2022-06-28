import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intent_original/View/Screens/UI/SignupScreen/signup_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'package:sizer/sizer.dart';

void main() {
  Future.delayed(const Duration(seconds: 3), () {
    WidgetsFlutterBinding.ensureInitialized();
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return const GetMaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
          ],
          supportedLocales: [
            Locale('en', 'US'), // English
            // Thai
          ],
          home: SignUpScreen(),
        );
      },
    );
  }
}
