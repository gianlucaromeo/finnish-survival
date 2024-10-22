import 'package:finnish_survival/modules/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

typedef FormKey = GlobalKey<FormState>;

class ExercisesPageController extends GetxController {
  final _fakeDatabaseService = Get.find<FakeDatabaseService>();

  final Rxn<TopicExercise> _currentTopicExercise = Rxn<TopicExercise>();
  final RxInt _currentExerciseIndex = RxInt(0);
  final RxBool _isLastExercise = false.obs;

  /* Hint state */
  final RxBool _askedForHint = false.obs;
  final RxInt _hintCounter = 0.obs;

  final RxBool _showFavorites = false.obs;

  RxBool get showFavorites => _showFavorites;

  final Rx<FormKey> _formKey = FormKey().obs;

  Rxn<TopicExercise> get currentTopicExercise => _currentTopicExercise;

  RxInt get currentExerciseIndex => _currentExerciseIndex;

  RxBool get isLastExercise => _isLastExercise;

  Rx<Database> get database => _fakeDatabaseService.fakeDatabase;

  RxBool get askedForHint => _askedForHint;

  RxInt get hintCounter => _hintCounter;

  FormKey get formKey => _formKey.value;

  String get currentSolution => answerOf(_currentExerciseIndex.value);

  @override
  onInit() {
    super.onInit();
    _formKey.value = GlobalKey<FormState>();
  }

  bool get thereAreNoFavoritesTopics => database.value.topicExercises
      .every((topicExercise) => !topicExercise.isFavorite);

  void setShowFavorites(bool value) {
    _showFavorites.value = value;
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

    _askedForHint.value = false;
    _hintCounter.value = 0;

    formKey.currentState?.reset();
  }

  void setExercises(TopicExercise topicExercise) {
    _currentTopicExercise.value = topicExercise;
    _currentExerciseIndex.value = 0;
    _isLastExercise.value = false;

    _askedForHint.value = false;
    _hintCounter.value = 0;
  }

  void resetExercises() async {
    if (_isLastExercise.value) {
      _fakeDatabaseService
          .markTopicExerciseAsComplete(_currentTopicExercise.value!.id);
    }

    await Future.delayed(const Duration(milliseconds: 500));
    _currentExerciseIndex.value = 0;
    _isLastExercise.value = false;

    _askedForHint.value = false;
    _hintCounter.value = 0;
  }

  void incrementHintCounter() {
    _askedForHint.value = true;
    _hintCounter.value++;
  }
}
