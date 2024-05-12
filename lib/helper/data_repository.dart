
import 'dart:developer';

import 'package:bit_math/firebase_options.dart';
import 'package:bit_math/helper/save_data_helper.dart';
import 'package:bit_math/models/save_data_status.dart';
import 'package:bit_math/models/score_data.dart';
import 'package:bit_math/models/user_data.dart';
import 'package:bit_math/utils/device_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class BackendDataRepository extends ChangeNotifier{

  BackendDataRepository(this.saveDataHelper);

  final SaveDataHelper saveDataHelper;
  
  UserData userData = UserData(
    deviceId: null, 
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

      //if isSignedInBefore is false: create user document
      //if isSignedInBefor is true and savedata dont exist:restore score
      // if isSignedInBefor is true and savedata exist: savedata have top priority
      log('isSignedInBefore:${await isSignedInBefore(deviceId)}');
      if(!(await isSignedInBefore(deviceId))){
        log('$userData');
        _createUserDataDocument(userData);
      }else{
        final backUpUserData = (await getUserData(userData.deviceId!));
        final localScoreData = (saveDataHelper.getData(SaveDataStatus.scoreData) as ScoreData?);
        if(localScoreData?.bestScore==0){
          if(backUpUserData!=null){
            _restoreSaveData(backUpUserData);
            log('restore savedata');
             }
        }

        // if local scoredata is begger than server scoreData
        // update sever scoreData
        if(
          backUpUserData!=null&&
          localScoreData!=null&&
          backUpUserData.bestScore<localScoreData.bestScore){
            updateUserData(userData);
          }
      }

      // test
      // log('global top scores:${await getTopGlobalScore()}');
    }

    }catch(e){
      log(e.toString());
    }
  }

  Future<void> updateUserData(UserData data)async{
    if(userData.deviceId!=null){
    log(userData.deviceId!);
    final snapshots = await userCollection.where(
      'deviceId',
      isEqualTo: userData.deviceId
      ).get();
    

    if(snapshots.docs.isNotEmpty){
      await userCollection
      .doc(snapshots.docs.first.id).set(
        data.toFirestore(),
        SetOptions(merge: true));
      log('data updated');
    }else{
      log('snapshots.docs.isNotEmpty:false');
    }
    }
  }

  Future<UserData?> getUserData(String deviceId)async{
    final snapshots = await userCollection.where(
      'deviceId',
      isEqualTo: deviceId
      ).get();
    final data = snapshots.docs.first.data() as Map<String,dynamic>?;
    return data!=null ? UserData.fromMap(data):null;
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

  Future<void> _restoreSaveData(
    UserData userData
  )async{
    // when local save data don't exist and backend data exist
    // this function only restore bestScore
      saveDataHelper.scoreData = saveDataHelper.scoreData.copyWith(
        bestScore: userData.bestScore
      );
  }

  FirebaseFirestore get db => FirebaseFirestore.instance;

  CollectionReference get userCollection => db.collection('users');

}