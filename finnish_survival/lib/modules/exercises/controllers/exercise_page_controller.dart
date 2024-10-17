
import 'package:finnish_survival/modules/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

typedef FormKey = GlobalKey<FormState>;
typedef FormFieldKey = GlobalKey<FormFieldState>;

class ExercisesPageController extends GetxController {
  final _fakeDatabaseService = Get.find<FakeDatabaseService>();

  final Rxn<TopicExercise> _currentTopicExercise = Rxn<TopicExercise>();
  final RxnInt _currentExerciseIndex = RxnInt();
  final RxBool _isLastExercise = false.obs;

  final Rx<FormKey> _formKey = FormKey().obs;
  final Rx<FormFieldKey> _answerInputKey = FormFieldKey().obs;

  Rxn<TopicExercise> get currentTopicExercise => _currentTopicExercise;
  RxnInt get currentExerciseIndex => _currentExerciseIndex;
  RxBool get isLastExercise => _isLastExercise;
  Rx<Database> get database => _fakeDatabaseService.fakeDatabase;

  FormKey get formKey => _formKey.value;
  FormFieldKey get answerInputKey => _answerInputKey.value;

  @override
  onInit() {
    super.onInit();
    _formKey.value = GlobalKey<FormState>();
    _answerInputKey.value = GlobalKey<FormFieldState>();
  }

  String answerOf(int index) {
    return _currentTopicExercise.value!.exercises[index].answer;
  }

  void toggleTopicExerciseIsFavorite(String topicId) {
    _fakeDatabaseService.toggleTopicExerciseIsFavorite(topicId);
  }

  void nextExercise() {
    _currentExerciseIndex.value = (_currentExerciseIndex.value ?? -1) + 1;
    final totalExercises = _currentTopicExercise.value!.exercises.length;
    _isLastExercise.value = _currentExerciseIndex.value == totalExercises - 1;
    if (_isLastExercise.value) {
      _fakeDatabaseService.markTopicExerciseAsComplete(_currentTopicExercise.value!.id);
      resetExercises();
    }
    formKey.currentState?.reset();
  }

  void setExercises(TopicExercise topicExercise) {
    _currentTopicExercise.value = topicExercise;
    nextExercise();
  }

  void resetExercises() async {
    await Future.delayed(const Duration(milliseconds: 500));
    _currentTopicExercise.value = null;
    _currentExerciseIndex.value = null;
    _isLastExercise.value = false;
  }
}
