import 'package:acatools_app/core/utils/logger.dart';
import 'package:acatools_app/core/utils/size_utils.dart';
import 'package:acatools_app/localization/app_localization.dart';
import 'package:acatools_app/routes/app_routes.dart';
import 'package:acatools_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sizer/sizer.dart' as sizer;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return sizer.Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light(),
          translations: AppLocalization(),
          locale: Locale('en', ''),
          fallbackLocale: Locale('en', ''),
          title: 'acatools_app',
          initialRoute: AppRoutes.initialRoute,
          getPages: AppRoutes.pages,
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaler: TextScaler.linear(1.0),
              ),
              child: child!,
            );
          },

          //AppTheme.lightTheme,
          //darkTheme: AppTheme.darkTheme,
          // themeMode: ThemeMode.system, // Handles dark mode based on system settings
          //home: LoginScreen(),
        );
      },
    );
  }
}
