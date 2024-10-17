
import 'package:finnish_survival/modules/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

typedef FormKey = GlobalKey<FormState>;

class ExercisesPageController extends GetxController {
  final _fakeDatabaseService = Get.find<FakeDatabaseService>();

  final Rxn<TopicExercise> _currentTopicExercise = Rxn<TopicExercise>();
  final RxInt _currentExerciseIndex = RxInt(0);
  final RxBool _isLastExercise = false.obs;

  final Rx<FormKey> _formKey = FormKey().obs;

  Rxn<TopicExercise> get currentTopicExercise => _currentTopicExercise;
  RxInt get currentExerciseIndex => _currentExerciseIndex;
  RxBool get isLastExercise => _isLastExercise;
  Rx<Database> get database => _fakeDatabaseService.fakeDatabase;

  FormKey get formKey => _formKey.value;

  @override
  onInit() {
    super.onInit();
    _formKey.value = GlobalKey<FormState>();
  }

  String answerOf(int index) {
    return _currentTopicExercise.value!.exercises[index].answer;
  }

  void toggleTopicExerciseIsFavorite(String topicId) {
    _fakeDatabaseService.toggleTopicExerciseIsFavorite(topicId);
  }

  void nextExercise() {
    _currentExerciseIndex.value++;

    final totalExercises = _currentTopicExercise.value!.exercises.length;
    _isLastExercise.value = _currentExerciseIndex.value == totalExercises - 1;

    formKey.currentState?.reset();
  }

  void setExercises(TopicExercise topicExercise) {
    _currentTopicExercise.value = topicExercise;
    _currentExerciseIndex.value = 0;
    _isLastExercise.value = false;
  }

  void resetExercises() async {
    if (_isLastExercise.value) {
      _fakeDatabaseService.markTopicExerciseAsComplete(_currentTopicExercise.value!.id);
    }

    await Future.delayed(const Duration(milliseconds: 500));
    _currentExerciseIndex.value = 0;
    _isLastExercise.value = false;
  }
}
