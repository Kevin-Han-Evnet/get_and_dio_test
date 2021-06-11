import 'package:get/get.dart';
import 'package:get_and_dio_test/binding/SampleBind.dart';
import 'package:get_and_dio_test/transition/SlideUpTransition.dart';
import 'package:get_and_dio_test/ui/second/Second.dart';
import 'package:get_and_dio_test/ui/test/TestPage.dart';
import 'package:get_and_dio_test/ui/third/Third.dart';

import 'binding/TestBinder.dart';
import 'ui/first/First.dart';

class Constants {

  static final List<GetPage> T_PAGES = [
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
    GetPage(
      name: '/test',
      page: ()=> TestPage (),
      binding: TestBinder (),
      customTransition: SlideUpTransition()
    )
  ];

}