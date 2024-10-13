import 'package:finnish_survival/db.dart';
import 'package:finnish_survival/models/models.dart';
import 'package:finnish_survival/service/db_service.dart';
import 'package:get/get.dart';

class DbController {
  final LocalDbService localDbService = Get.find<LocalDbService>();

  Database _database = Database(topics: []);

  final RxList<Topic> topics = <Topic>[].obs;

  DbController(Database initialDb) {
    // Load initial db
    _database = initialDb;

    // Load favorite topics from local db
    final localTopicFavorites = localDbService.topicFavorites;

    // Update topics with favorite status
    final newTopics = _database.topics.map((topic) {
      return topic.copyWith(
        isFavorite: localTopicFavorites.contains(topic.id),
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
}
