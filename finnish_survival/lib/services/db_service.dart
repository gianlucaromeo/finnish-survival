import 'package:shared_preferences/shared_preferences.dart';

class _Keys {
  static const topicsFavorites = 'topicsFavorites';
  static const finnishWordsFavorites = 'finnishWordsFavorites';
}

class LocalDbService {
  final SharedPreferences _prefs;

  LocalDbService(this._prefs);

  List<String> get topicFavorites {
    return _prefs.getStringList(_Keys.topicsFavorites) ?? [];
  }

  List<String> get finnishWordsFavorites {
    return _prefs.getStringList(_Keys.finnishWordsFavorites) ?? [];
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
}