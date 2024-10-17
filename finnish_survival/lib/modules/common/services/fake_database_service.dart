import 'package:finnish_survival/modules/common/common.dart';
import 'package:get/get.dart';

class FakeDatabaseService {
  final _localDbService = Get.find<LocalDbService>();
  final fakeDatabase = Database(topics: [], topicExercises: []).obs;

  FakeDatabaseService(Database database) {
    _initTopics(database.topics);
    _initTopicsExercises(database.topicExercises);
  }

  /* INITIALIZATION */

  void _initTopics(List<Topic> topics) {
    final initialTopics = topics.map((topic) {
      return topic.copyWith(
        isFavorite: _localDbService.isTopicFavorite(topic.id),
        isComplete: _localDbService.isTopicCompleted(topic.id),
        words: topic.words.map((word) {
          return word.copyWith(
            finnishTranslations: word.finnishTranslations.map((finnishWord) {
              return finnishWord.copyWith(
                isFavorite:
                _localDbService.isFinnishWordFavorite(finnishWord.id),
              );
            }).toList(),
          );
        }).toList(),
      );
    }).toList();

    _setTopics(initialTopics);
  }

  void _setTopics(List<Topic> newTopics) {
    fakeDatabase.value = fakeDatabase.value.copyWith(topics: newTopics);
  }

  void _initTopicsExercises(List<TopicExercise> topicExercises) {
    final initialTopicExercises = topicExercises.map((topicExercise) {
      return topicExercise.copyWith(
        isFavorite: _localDbService.isTopicExerciseFavorite(topicExercise.id),
        isComplete: _localDbService.isTopicExerciseCompleted(topicExercise.id),
      );
    }).toList();

    _setTopicExercises(initialTopicExercises);
  }

  void _setTopicExercises(List<TopicExercise> newTopicExercises) {
    fakeDatabase.value =
        fakeDatabase.value.copyWith(topicExercises: newTopicExercises);
  }

  /* OPERATIONS - TOPICS LEARN */

  void toggleFinnishWordIsFavorite(String finnishWordId) {
    final newTopics = fakeDatabase.value.topics.map((topic) {
      final newWords = topic.words.map((word) {
        final newFinnishWords = word.finnishTranslations.map((finnishWord) {
          if (finnishWord.id == finnishWordId) {
            final newIsFavorite = !finnishWord.isFavorite;
            _localDbService.setFinnishWordFavorite(finnishWordId, newIsFavorite);
            return finnishWord.copyWith(isFavorite: newIsFavorite);
          } else {
            return finnishWord;
          }
        }).toList();
        return word.copyWith(finnishTranslations: newFinnishWords);
      }).toList();
      return topic.copyWith(words: newWords);
    }).toList();

    _setTopics(newTopics);
  }

  void toggleTopicIsFavorite(String topicId) {
    final newTopics = fakeDatabase.value.topics.map((topic) {
      if (topic.id == topicId) {
        final newIsFavorite = !topic.isFavorite;
        _localDbService.setTopicFavorite(topicId, newIsFavorite);
        return topic.copyWith(isFavorite: newIsFavorite);
      } else {
        return topic;
      }
    }).toList();

    _setTopics(newTopics);
  }

  void markTopicAsComplete(String topicId) {
    _localDbService.setTopicCompleted(topicId);

    final newTopics = fakeDatabase.value.topics.map((topic) {
      if (topic.id == topicId) {
        return topic.copyWith(isComplete: true);
      } else {
        return topic;
      }
    }).toList();

    _setTopics(newTopics);
  }

  /* OPERATIONS - TOPIC EXERCISES */

  void toggleTopicExerciseIsFavorite(String topicId) {
    final newTopicExercises = fakeDatabase.value.topicExercises.map((topicExercise) {
      if (topicExercise.id == topicId) {
        final newIsFavorite = !topicExercise.isFavorite;
        _localDbService.setTopicExerciseFavorite(topicId, newIsFavorite);
        return topicExercise.copyWith(isFavorite: newIsFavorite);
      } else {
        return topicExercise;
      }
    }).toList();

    _setTopicExercises(newTopicExercises);
  }

  void markTopicExerciseAsComplete(String topicId) {
    _localDbService.setTopicExerciseCompleted(topicId);

    final newTopicExercises = fakeDatabase.value.topicExercises.map((topicExercise) {
      if (topicExercise.id == topicId) {
        return topicExercise.copyWith(isComplete: true);
      } else {
        return topicExercise;
      }
    }).toList();

    _setTopicExercises(newTopicExercises);
  }
}
