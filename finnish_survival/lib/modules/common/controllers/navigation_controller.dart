import 'package:get/get.dart';

class NavigationController {
  final _routes = [
    '/learn',
    '/exercises',
    '/exercises/current',
  ];

  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void setCurrentIndex(int index) {
    _currentIndex = index;
    _navigateTo(_routes[index]);
  }

  void _navigateTo(String route) {
    Get.offAndToNamed(route);
  }
}