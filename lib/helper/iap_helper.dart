import 'package:in_app_purchase/in_app_purchase.dart';


/*
  IAPHelperの役割
  - 初期化時にsave_data_helperのインスタンスを受け取って、shared_preferenceへアクセスできるようにする
  - 初期化時にproductIdからproductDetailsのリストを取得して、変数に格納する
     そして、InAppPurchaseのインスタンスのpurchaseStreamをリッスンして、購入、復元、エラー処理を実装した_handlePurchaseコールバックを渡す
  - 購入時,購入復元時の処理ではsave_data_helperにおける適切な処理をする
  - バッグエンドを使わないために、非消費型、サブスクリプション、記録の必要のない消費型のみを扱い、それらはenum型などでidとともに管理する
  
*/
class IAPHelper{

  
  Future<void> init()async{

  }

}