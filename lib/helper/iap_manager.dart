import 'dart:developer';

import 'package:bit_math/helper/save_data_helper.dart';
import 'package:in_app_purchase/in_app_purchase.dart';


/*
  IAPHelperの役割
  - 初期化時にsave_data_helperのインスタンスを受け取って、shared_preferenceへアクセスできるようにする
  - 初期化時にproductIdからproductDetailsのリストを取得して、変数に格納する
     そして、InAppPurchaseのインスタンスのpurchaseStreamをリッスンして、購入、復元、エラー処理を実装した_handlePurchaseコールバックを渡す
  - 購入時,購入復元時の処理ではsave_data_helperにおける適切な処理をする
  - バッグエンドを使わないために、非消費型、サブスクリプション、記録の必要のない消費型のみを扱い、それらはenum型などでidとともに管理する
  
*/
class InAppPurchaseManager {
  InAppPurchaseManager({
    required this.saveDataHelper
  });

  //購入情報をアプリに保存するためのもの
  final SaveDataHelper saveDataHelper;

  // 商品情報を取得するためのインスタンス
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;

  // 購入情報を格納する変数
  final Map<PurchaseItem, ProductDetails> _products = {};

  // 購入状態を格納する変数
  final Map<PurchaseItem, bool> _purchases = {};

  // 初期化
  Future<void> initialize() async {
    // プラットフォームの利用可能性を確認
    final bool available = await _inAppPurchase.isAvailable();
    if (!available) {
      log('payment platform is not ready');
      return;
    }

    // リスナーの設定
    _inAppPurchase.purchaseStream.listen((purchaseDetailsList) {
      _listenToPurchaseUpdated(purchaseDetailsList);
    });

    // 商品情報を取得
    final ProductDetailsResponse response = await _inAppPurchase.queryProductDetails(
      Set<String>.from(PurchaseItem.values.map((item) => item.productId)),
    );
    if (response.error != null) {
      log(response.error!.code);
      return;
    }
    for (var productDetail in response.productDetails) {
      log('product title:${productDetail.title}');
      final item = PurchaseItem.values.firstWhere((item) => item.productId == productDetail.id);
      _products[item] = productDetail;
    }
  }

  // 購入処理
  Future<void> purchase(PurchaseItem item) async {
    if(_products[item]==null){
      log('no such product');
      return;
    }
    switch(item.status){
      case ProductItemStatus.nonConsumable:{
        final PurchaseParam purchaseParam = PurchaseParam(productDetails: _products[item]!);
        await _inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
      }
      case ProductItemStatus.consumable:{
        final PurchaseParam purchaseParam = PurchaseParam(productDetails: _products[item]!);
        await _inAppPurchase.buyConsumable(purchaseParam: purchaseParam);
      }
      case ProductItemStatus.subscription:{
        final PurchaseParam purchaseParam = PurchaseParam(productDetails: _products[item]!);
        await _inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
      }
    }

  }

  // 復元処理
  Future<void> restorePurchases() async {
    try{
      log('restore start');
      await _inAppPurchase.restorePurchases();
    }catch(e){
      log(e.toString());
    }
  }

  // ストリームに渡される購入情報の処理
  void _listenToPurchaseUpdated(List<PurchaseDetails> purchaseDetailsList) {
    purchaseDetailsList.forEach((PurchaseDetails purchaseDetails) async {
      switch (purchaseDetails.status) {
        case PurchaseStatus.pending:
          log('purchase pending');
          break;
        case PurchaseStatus.purchased:{
          // 購入成功
          log('purchased');
          final item = PurchaseItem.values.firstWhere(
            (item) => item.productId == purchaseDetails.productID,);
          purchasedOrRestored(item);
        }
        case PurchaseStatus.restored:{
          // 購入復元成功
          log('restored');
          final item = PurchaseItem.values.firstWhere(
            (item) => item.productId == purchaseDetails.productID,);
          purchasedOrRestored(item);
        }
          
        case PurchaseStatus.error:
          log('purchase failed');
          break;
        case PurchaseStatus.canceled:
          log('purchase cancelled');
      }
    });
  }

  // 購入状態の取得
  bool getPurchaseStatus(PurchaseItem item) {
    return _purchases[item] ?? false;
  }

  Future<void> purchasedOrRestored(PurchaseItem item)async{
    switch(item){
      case PurchaseItem.removeAd:{
        final iapData = saveDataHelper.iapData;
        if(iapData.isRemovedAd==true){
          log('already purchased. this should not be occur!,you should check iapData.isRemovedAd==true before purchase');
          return;
        }
        saveDataHelper.iapData = saveDataHelper.iapData.copyWith(
          isRemovedAd: true
          );
      }
    }
  }
}


enum PurchaseItem{
  removeAd('bitmath_remove_ad',ProductItemStatus.nonConsumable);

  const PurchaseItem(this.productId,this.status);

  final String productId;
  final ProductItemStatus status;
}

enum ProductItemStatus{
  consumable,nonConsumable,subscription
}