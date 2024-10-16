import 'package:finnish_survival/finnish_survival.dart';
import 'package:get/get.dart';

class LearnPageController extends GetxController {
  final _fakeDatabaseService = Get.find<FakeDatabaseService>();

  final Rxn<Topic> currentTopic = Rxn<Topic>();
  final RxList<FinnishWord> currentTranslations = <FinnishWord>[].obs;
  final RxnInt currentWordIndex = RxnInt();
  final RxBool isLastWord = false.obs;

  Rx<Database> get database => _fakeDatabaseService.fakeDatabase;

  @override
  void onInit() {
    super.onInit();

    everAll(
      [currentTopic, currentWordIndex],
      (_) => _updateCurrentTranslations(),
      condition: () {
        return currentTopic.value != null && currentWordIndex.value != null;
      },
    );
  }

  void toggleFinnishWordIsFavorite(String finnishWordId) {
    _fakeDatabaseService.toggleFinnishWordIsFavorite(finnishWordId);
    final newTranslations = currentTranslations.map((word) {
      if (word.id == finnishWordId) {
        return word.copyWith(isFavorite: !word.isFavorite);
      }
      return word;
    }).toList();
    currentTranslations.value = newTranslations;
  }

  void toggleTopicIsFavorite(String topicId) {
    _fakeDatabaseService.toggleTopicIsFavorite(topicId);
  }

  void markTopicAsComplete(String topicId) {
    _fakeDatabaseService.markTopicAsComplete(topicId);
    currentTopic.value = currentTopic.value!.copyWith(isComplete: true);
  }

  void nextWord() {
    currentWordIndex.value = (currentWordIndex.value ?? -1) + 1;
    final totalWords = currentTopic.value!.words.length;
    isLastWord.value = currentWordIndex.value == totalWords - 1;
  }

  void setTopic(Topic topic) {
    currentTopic.value = topic;
    currentWordIndex.value = 0;
  }

  void resetTopic() async {
    await Future.delayed(const Duration(milliseconds: 500));
    currentTopic.value = null;
    currentWordIndex.value = null;
    isLastWord.value = false;
    currentTranslations.clear();
  }

  void _updateCurrentTranslations() {
    final words = currentTopic.value!.words;
    final currentIndex = currentWordIndex.value!;
    currentTranslations.value = words[currentIndex].finnishTranslations;
  }
}
