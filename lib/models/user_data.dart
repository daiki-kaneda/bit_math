import 'package:cloud_firestore/cloud_firestore.dart';


class UserData {
  final String? deviceId;
  final String name;
  final int bestScore;

  UserData({
    required this.deviceId,
    required this.name,
    required this.bestScore,
  });

  UserData copyWith({
    String? deviceId,
    String? name,
    int? bestScore,
  }){
    return UserData(
      deviceId: deviceId ?? this.deviceId, 
      name: name ?? this.name, 
      bestScore: bestScore ?? this.bestScore);
  }

  factory UserData.fromFirestore(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final data = snapshot.data();
    return UserData(
      deviceId: data?['deviceId'],
      name: data?['name'] ?? '',
      bestScore: data?['bestScore'] ?? 0,
    );
  }

  factory UserData.fromMap(Map<String, dynamic> data) {
    return UserData(
      deviceId: data['deviceId'],
      name: data['name'] ?? '',
      bestScore: data['bestScore'] ?? 0,
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'deviceId': deviceId,
      'name': name,
      'bestScore': bestScore,
    };
  }
}

