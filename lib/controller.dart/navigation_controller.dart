import 'package:get/get.dart';

class NavigationCotroller extends GetxController {
  RxInt currentIndex = 0.obs;

  void changeValue(index){
    currentIndex.value = index;
  }

}
