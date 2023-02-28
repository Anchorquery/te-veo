import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:te_veo_app/constants/app_colors.dart';
import 'package:te_veo_app/helpers/helpers.dart';
import 'package:te_veo_app/screens/screens.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor:
            AppColors.orangeMainColor, // navigation bar color
        statusBarColor: Colors.transparent, //
        statusBarIconBrightness: Brightness.dark, // status bar color
      ),
    );
    return Sizer(builder: (context,Orientation,DeviceType) => 
    
              GetMaterialApp(
                title: 'Food App',
                debugShowCheckedModeBanner: false,
                defaultTransition: Transition.rightToLeftWithFade,
                theme: ThemeData(
                  primarySwatch: Colors.orange,
                  scaffoldBackgroundColor: AppColors.whiteColor,
                ),
                home: const BeginningScreen(),
              )
        );
  }
}