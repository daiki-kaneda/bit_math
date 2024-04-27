
import 'dart:developer';

import 'package:bit_math/firebase_options.dart';
import 'package:bit_math/helper/save_data_helper.dart';
import 'package:bit_math/models/save_data_status.dart';
import 'package:bit_math/models/score_data.dart';
import 'package:bit_math/models/setting.dart';
import 'package:bit_math/models/user_data.dart';
import 'package:bit_math/utils/device_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class BackendDataRepository extends ChangeNotifier{

  BackendDataRepository(this.saveDataHelper);

  final SaveDataHelper saveDataHelper;
  
  UserData userData = UserData(
    deviceId: '', 
    name: 'Unnamed', 
    bestScore: 0);
  Future<void> init()async{
    try{
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

    final deviceId = await getDeviceId();
    final bestScore = (saveDataHelper.getData(SaveDataStatus.scoreData) as ScoreData?)?.bestScore ?? 0;

    if(deviceId!=null){
      
      userData = UserData(
        deviceId: deviceId, 
        name: 'Unnamed', 
        bestScore: bestScore);

      // TODO: check server and 
      //if data matched deviceId exisits : update userData
      // else create new userData document that has name automatically generated and
      // device id as value

      log('isSignedInBefore:${await isSignedInBefore(deviceId)}');
      if(!(await isSignedInBefore(deviceId))){
        _createUserDataDocument(userData);
      }

      // test
      log('global top scores:${await getTopGlobalScore()}');
    }

    }catch(e){
      log(e.toString());
    }
  }

  Future<void> updateUserData(UserData userData)async{
    final snapshots = await userCollection.where(
      'deviceId',
      isEqualTo: userData.deviceId
      ).get();
    
    if(!snapshots.docs.isNotEmpty){
      userCollection
      .doc(snapshots.docs.first.id).update(userData.toFirestore(),);
    }
  }

  Future<List<int>> getTopGlobalScore()async{
    final snapshots = await userCollection.orderBy(
      'bestScore',descending: true).limit(5).get();

    return snapshots.docs.map((d) => d.data() as Map<String,dynamic>)
    .map((e) => UserData.fromMap(e).bestScore).toList();
  }

  Future<void> _createUserDataDocument(UserData data)async{
    final docRef = userCollection
    .withConverter(
      fromFirestore:(snapshot, options) => UserData.fromFirestore(snapshot),
      toFirestore: (UserData data, options) => data.toFirestore(),
    ).doc();
    await docRef.set(data);
  }

  Future<bool> isSignedInBefore(String deviceId)async{
    final snapshots = await userCollection.where(
      'deviceId',
      isEqualTo: deviceId
      ).get();
    if(snapshots.docs.isEmpty){
      return false;
    }else{
      return true;
    }
  }

  FirebaseFirestore get db => FirebaseFirestore.instance;

  CollectionReference get userCollection => db.collection('users');

}