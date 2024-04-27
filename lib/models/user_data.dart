import 'package:cloud_firestore/cloud_firestore.dart';


class UserData {
  final String deviceId;
  final String name;
  final int bestScore;

  UserData({
    required this.deviceId,
    required this.name,
    required this.bestScore,
  });

  factory UserData.fromFirestore(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final data = snapshot.data();
    return UserData(
      deviceId: data?['deviceId'] ?? '',
      name: data?['name'] ?? '',
      bestScore: data?['bestScore'] ?? 0,
    );
  }

  factory UserData.fromMap(Map<String, dynamic> data) {
    return UserData(
      deviceId: data['deviceId'] ?? '',
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

