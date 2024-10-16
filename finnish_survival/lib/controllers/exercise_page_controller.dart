import 'package:finnish_survival/finnish_survival.dart';
import 'package:get/get.dart';

class ExercisesPageController extends GetxController {
  final _fakeDatabaseService = Get.find<FakeDatabaseService>();

  final Rxn<TopicExercise> _currentTopicExercise = Rxn<TopicExercise>();
  final RxnInt _currentExerciseIndex = RxnInt();
  final RxBool _isLastExercise = false.obs;

  Rx<Database> get fakeDatabase => _fakeDatabaseService.fakeDatabase;

  void nextExercise() {
    _currentExerciseIndex.value = (_currentExerciseIndex.value ?? -1) + 1;
    final totalExercises = _currentTopicExercise.value!.exercises.length;
    _isLastExercise.value = _currentExerciseIndex.value == totalExercises - 1;
  }

  void setExercises(TopicExercise topicExercise) {
    _currentTopicExercise.value = topicExercise;
    nextExercise();
  }

  void resetExercises() async {
    Future.delayed(const Duration(milliseconds: 500));
    _currentTopicExercise.value = null;
    _currentExerciseIndex.value = null;
    _isLastExercise.value = false;
  }
}
