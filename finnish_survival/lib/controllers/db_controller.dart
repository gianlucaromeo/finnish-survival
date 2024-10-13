import 'package:finnish_survival/finnish_survival.dart';
import 'package:get/get.dart';

class DbController {
  final LocalDbService localDbService = Get.find<LocalDbService>();

  Database _database = Database(topics: []);

  final RxList<Topic> topics = <Topic>[].obs;

  /* State for LearnTopicPage */
  final Rxn<Topic> learnTopic = Rxn<Topic>();
  final RxnInt learnWordIndex = RxnInt();
  final RxBool isLearnTopicComplete = false.obs;

  List<FinnishWord> get currentTranslations {
    return learnTopic.value!.words[learnWordIndex.value!].finnishTranslations;
  }

  void setLearnTopic(Topic topic) {
    learnTopic.value = topic;
    nextLearnEnglishWord();
  }

  void resetLearnTopic() async {
    // TODO: Fix this:
    // Without this delay, LearnTopicPage tries to render the topic data but
    // the data is already null.
    await Future.delayed(const Duration(milliseconds: 500));

    learnTopic.value = null;
    learnWordIndex.value = null;
    isLearnTopicComplete.value = false;
  }

  void nextLearnEnglishWord() {
    learnWordIndex.value = (learnWordIndex.value ?? -1) + 1;
    isLearnTopicComplete.value =
        learnWordIndex.value == learnTopic.value!.words.length - 1;
  }

  void _updateLearnTopic(String finnishWordId) {
    if (learnTopic.value != null) {
      final newLearnTopic = learnTopic.value!.copyWith(
        words: learnTopic.value!.words.map((word) {
          final newFinnishWords = word.finnishTranslations.map((finnishWord) {
            if (finnishWord.id == finnishWordId) {
              return finnishWord.copyWith(isFavorite: !finnishWord.isFavorite);
            } else {
              return finnishWord;
            }
          }).toList();

          return word.copyWith(finnishTranslations: newFinnishWords);
        }).toList(),
      );

      learnTopic.value = newLearnTopic;
    }
  }

  DbController(Database initialDb) {
    // Load initial db
    _database = initialDb;

    // Load favorite topics from local db
    final localTopicFavorites = localDbService.topicFavorites;

    // Load favorite finnish words from local db
    final localFinnishWordFavorites = localDbService.finnishWordsFavorites;

    // Update topics with favorite status
    final newTopics = _database.topics.map((topic) {
      return topic.copyWith(
        isFavorite: localTopicFavorites.contains(topic.id),
        words: topic.words.map((word) {
          return word.copyWith(
            finnishTranslations: word.finnishTranslations.map((finnishWord) {
              return finnishWord.copyWith(
                isFavorite: localFinnishWordFavorites.contains(finnishWord.id),
              );
            }).toList(),
          );
        }).toList(),
      );
    }).toList();

    _setTopics(newTopics);
  }

  /// Set the updated topics in both local db and controller state.
  void _setTopics(List<Topic> newTopics) {
    // Update local db
    _database.topics.clear();
    _database.topics.addAll(newTopics);

    // Update controller state
    topics.clear();
    topics.addAll(newTopics);
  }

  void toggleTopicIsFavorite(String topicId) {
    final newTopics = topics.map((topic) {
      if (topic.id == topicId) {
        // Update local db
        localDbService.setTopicFavorite(
          topicId,
          !topic.isFavorite,
        );

        // Update topic
        return topic.copyWith(isFavorite: !topic.isFavorite);
      } else {
        return topic;
      }
    }).toList();

    _setTopics(newTopics);
  }

  void toggleFinnishWordIsFavorite(String finnishWordId) {
    // Update topics
    final newTopics = topics.map((topic) {
      // Update words
      final newWords = topic.words.map((word) {
        // Update finnish words
        final newFinnishWords = word.finnishTranslations.map((finnishWord) {
          if (finnishWord.id == finnishWordId) {
            // Update local db
            localDbService.setFinnishWordFavorite(
              finnishWordId,
              !finnishWord.isFavorite,
            );

            // Update finnish word
            return finnishWord.copyWith(isFavorite: !finnishWord.isFavorite);
          } else {
            return finnishWord;
          }
        }).toList();

        // Update word with new finnish words
        return word.copyWith(finnishTranslations: newFinnishWords);
      }).toList();

      // Update topic with new words
      return topic.copyWith(words: newWords);
    }).toList();

    // Update controller state and local db
    _setTopics(newTopics);

    // Update learn topic
    _updateLearnTopic(finnishWordId);
  }
}
