import 'package:shared_preferences/shared_preferences.dart';

class _Keys {
  static const topicCompleted = 'topicCompleted';
  static const topicsFavorites = 'topicsFavorites';
  static const finnishWordsFavorites = 'finnishWordsFavorites';

  static const topicExercisesCompleted = 'topicExercisesCompleted';
  static const topicExercisesFavorites = 'topicExercisesFavorites';
}

class LocalDbService {
  final SharedPreferences _prefs;

  LocalDbService(this._prefs);

  List<String> get topicsCompleted {
    return _prefs.getStringList(_Keys.topicCompleted) ?? [];
  }

  List<String> get topicFavorites {
    return _prefs.getStringList(_Keys.topicsFavorites) ?? [];
  }

  List<String> get finnishWordsFavorites {
    return _prefs.getStringList(_Keys.finnishWordsFavorites) ?? [];
  }

  List<String> get topicExercisesCompleted {
    return _prefs.getStringList(_Keys.topicExercisesCompleted) ?? [];
  }

  List<String> get topicExercisesFavorites {
    return _prefs.getStringList(_Keys.topicExercisesFavorites) ?? [];
  }

  /// Toggle favorite status for a topic or a finnish word.
  void _toggleFavorite(String key, String id, bool isFavorite) {
    final currentFavorites = _prefs.getStringList(key) ?? [];

    final newFavorite = isFavorite && !currentFavorites.contains(id);
    final oldFavorite = currentFavorites.contains(id) && !isFavorite;

    if (newFavorite) {
      // Add to favorites
      currentFavorites.add(id);
      _prefs.setStringList(key, currentFavorites);
    } else if (oldFavorite) {
      // Remove from favorites
      currentFavorites.remove(id);
      _prefs.setStringList(key, currentFavorites);
    }
  }

  void setTopicFavorite(String topicId, bool isFavorite) {
    _toggleFavorite(_Keys.topicsFavorites, topicId, isFavorite);
  }

  void setFinnishWordFavorite(String finnishWordId, bool isFavorite) {
    _toggleFavorite(_Keys.finnishWordsFavorites, finnishWordId, isFavorite);
  }

  void setTopicExerciseCompleted(String topicExerciseId) {
    _toggleFavorite(_Keys.topicExercisesCompleted, topicExerciseId, true);
  }

  void setTopicExerciseFavorite(String topicExerciseId, bool isFavorite) {
    _toggleFavorite(_Keys.topicExercisesFavorites, topicExerciseId, isFavorite);
  }

  void setTopicCompleted(String topicId) {
    if (!topicsCompleted.contains(topicId)) {
      final newCompleted = List<String>.from(topicsCompleted)..add(topicId);
      _prefs.setStringList(_Keys.topicCompleted, newCompleted);
    }
  }
}