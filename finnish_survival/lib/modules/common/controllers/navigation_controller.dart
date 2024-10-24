import 'package:get/get.dart';

class NavigationController {
  final _routes = [
    '/learn',
    '/exercises',
    '/exercises/current',
    '/learn/current',
  ];

  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void setCurrentIndex(int index) {
    _currentIndex = index;
    Get.offAllNamed(_routes[index]);
  }

  void pushToIndex(int index) {
    _currentIndex = index;
    Get.toNamed(_routes[index]);
  }
}