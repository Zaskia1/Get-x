import 'package:get/get.dart';
import '../controller/bottom_nav_ctr.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavCtr());
    // another bindings

  }
}