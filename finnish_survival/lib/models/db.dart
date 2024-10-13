import 'package:finnish_survival/finnish_survival.dart';

class Database {
  final List<Topic> topics;
  //final UserData userData;

  Database({
    required this.topics,
    //required this.userData,
  });

  Map<String, dynamic> toJson() => {
    'topics': topics,
    //'userData': userData,
  };

  factory Database.fromJson(Map<String, dynamic> json) {
    return Database(
      topics: json['topics'],
      //userData: json['userData'],
    );
  }

  Database copyWith({
    List<Topic>? topics,
    //UserData? userData,
  }) {
    return Database(
      topics: topics ?? this.topics,
      //userData: userData ?? this.userData,
    );
  }
}