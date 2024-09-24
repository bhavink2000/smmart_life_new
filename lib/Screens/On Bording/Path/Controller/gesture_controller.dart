import 'package:get/get.dart';

class GestureController extends GetxController {

  RxBool startFirstRound = false.obs ;

  setFirstRound (bool value) => startFirstRound(true);

  RxBool startSecondRound = false.obs ;

  setSecondRound (bool value) => startSecondRound(value);

  RxBool isFirstRoundCompleted = false.obs ;

  setMarkFirstRoundCompleted () => isFirstRoundCompleted(true);
}