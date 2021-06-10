import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_and_dio_test/transition/SlideInTransition.dart';
import 'package:get_and_dio_test/transition/SlideUpTransition.dart';
import 'package:get_and_dio_test/ui/second/Second.dart';

import 'transition/MyTransitions.dart';
import 'ui/binding/SimpleBind.dart';
import 'ui/first/First.dart';
import 'ui/third/Third.dart';

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
      defaultTransition: Transition.native,
      translations: MyTranslations(),
      locale: Locale('pt', 'BR'),
      getPages: [
        //GetPage(name: '/home', page: () => HomeView(), binding: HomeBinding()),
        //Simple GetPage
        GetPage(name: '/home', page: () => First()),
        // GetPage with custom transitions and bindings
        GetPage(
          name: '/second',
          page: () => Second(),
          binding: SampleBind(),
          transition: Transition.native,
          //transitionDuration: Duration (milliseconds: 1000)
        ),
        // GetPage with default transitions
        GetPage(
          name: '/third',
          page: () => Third(),
        ),
      ],
    );
  }
}