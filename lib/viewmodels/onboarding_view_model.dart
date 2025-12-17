import 'package:get/get.dart';

class OnboardingViewModel extends GetxController{
  RxInt selectedOnboardingIndex = 0.obs;

  void switchSelectedOnboardingIndex(int index){
    selectedOnboardingIndex.value = index;
  }
}