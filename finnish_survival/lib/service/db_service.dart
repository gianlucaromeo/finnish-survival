import 'package:shared_preferences/shared_preferences.dart';

class _Keys {
  static const topicsFavorites = 'topicsFavorites';
}

class LocalDbService {
  final SharedPreferences _prefs;

  LocalDbService(this._prefs);

  List<String> get topicFavorites {
    final favorites = _prefs.getStringList(_Keys.topicsFavorites);
    return favorites ?? [];
  }

  void setTopicFavorite(String topicId, bool isFavorite) {
    final currentFavorites = topicFavorites;

    final newFavorite = isFavorite && !currentFavorites.contains(topicId);
    final oldFavorite = currentFavorites.contains(topicId) && !isFavorite;

    if (newFavorite) {
      // Add to favorites
      currentFavorites.add(topicId);
      _prefs.setStringList(_Keys.topicsFavorites, currentFavorites);
    } else if (oldFavorite) {
      // Remove from favorites
      currentFavorites.remove(topicId);
      _prefs.setStringList(_Keys.topicsFavorites, currentFavorites);
    }
  }
}