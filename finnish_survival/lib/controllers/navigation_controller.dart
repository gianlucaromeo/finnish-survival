import 'package:get/get.dart';

class NavigationController {
  final routes = [
    '/learn',
    '/exercises',
    '/settings',
  ];

  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void setCurrentIndex(int index) {
    _currentIndex = index;
    navigateTo(routes[index]);
  }

  void navigateTo(String route) {
    Get.toNamed(route);
  }
}