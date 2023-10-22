import 'package:get/get.dart';

class SearchControllerX extends GetxController {
  List<String> category = [
    'Comedies',
    'Crime',
    'Family',
    'Documentaries',
    'Dramas',
    'Fantasy',
    'Holidays',
    'Horror',
    'Sci-Fi',
    'Thriller',
  ];
  RxBool isSearching = false.obs;
  void changeSearchValue() {
    isSearching.value = !isSearching.value;
  }
}
