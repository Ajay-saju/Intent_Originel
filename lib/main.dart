import 'package:flutter/material.dart';
import 'package:intent_original/View/Screens/UI/BottumNavyBar/bottum_nav_bar_screen.dart';
import 'package:intent_original/View/Screens/UI/LoginScreen/login_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

late SharedPreferences preferences;
void main() async {
  Future.delayed(const Duration(seconds: 3), () async {
    WidgetsFlutterBinding.ensureInitialized();
    preferences = await SharedPreferences.getInstance();

    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final login = preferences.getString("login");

    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: login == null || login.isEmpty
              ? const LoginScreen()
              : const BottumNavBarScreen(),
        );
      },
    );
  }
}
