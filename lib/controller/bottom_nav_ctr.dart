import 'package:get/get.dart';

class BottomNavCtr extends GetxController{
  //contains all logical operations methods and variable
  var selectedIndex = 0.obs;
  void changeIndexMenu(int index){
    selectedIndex.value = index;//untuk mencet, menguabah index
  }
}