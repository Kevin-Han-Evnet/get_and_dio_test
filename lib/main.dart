import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_and_dio_test/constants.dart';

import 'transition/MyTransitions.dart';

void main() {
  if (kReleaseMode) {
    debugPrint("ReleaseMode---");
  } else {
    debugPrint("DebugMode---");
  }

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_){
    runApp(
        MyApp()
    );
  }/*, onError: Crashlytics.instance.recordError*/);

  //runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      defaultTransition: Transition.noTransition,
      translations: MyTranslations(),
      locale: Locale('ko', 'KR'),
      getPages: Constants.T_PAGES,
    );
  }
}