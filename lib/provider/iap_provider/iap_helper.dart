import 'dart:async';
import 'dart:developer';

import 'package:bit_math/provider/save_data_provider/save_data_helper.dart';
import 'package:flutter/material.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// 参考：https://codelabs.developers.google.com/codelabs/flutter-in-app-purchases#7

enum ProductItemStatus { consumable, nonconsumable, subscription }

enum PurchaseItem {
  removeAd('bitmath_remove_ad', ProductItemStatus.nonconsumable);
  final String productId;
  final ProductItemStatus status;

  const PurchaseItem(this.productId, this.status);
}

/*
  IAPHelperはin_app_purchaseパッケージのpurchaseStreamをリッスンして、そのイベントに対して適切な処理を行う
  localDataManagerプロパティやpurchasedOrRestorePurchaseメソッド以外は再利用可能
*/
class IAPHelper{
  IAPHelper(this.saveDataHelper,{required this.purchasedOrRestored});

  final SaveDataHelper saveDataHelper;
  final _iapInstance = InAppPurchase.instance;
  late final StreamSubscription _iapPurchaseSubscription;
  final Map<PurchaseItem, ProductDetails> _products = {};

  Future<void>Function(PurchaseItem) purchasedOrRestored;

  Future<void> init() async {
    if (await _iapInstance.isAvailable()) {
      // get products details
      final response = await _iapInstance.queryProductDetails(
          PurchaseItem.values.map((e) => e.productId).toSet());
      if (response.error != null) {
        log('failed to get products details');
      } else {
        for (final detail in response.productDetails) {
          log('product title:${detail.title}');
          final status =
              PurchaseItem.values.firstWhere((s) => s.productId == detail.id);
          _products[status] = detail;
        }
        log('get products:${_products.toString()}');
        log('products length:${_products.length}');
      }

      // listen purchaseStream
      _iapPurchaseSubscription = _iapInstance.purchaseStream.listen(
        _onPurchaseUpdate,
        onError: (e) {
          log(e.toString());
        },
        onDone: () {
          _iapPurchaseSubscription.cancel();
        },
      );
    } else {
      log('payment platform is not ready');
    }
  }

  // 購入処理
  Future<void> purchase(PurchaseItem item) async {
    if (_products[item] == null) {
      log('no such product');
      return;
    }
    switch (item.status) {
      case ProductItemStatus.nonconsumable:
        {
          final PurchaseParam purchaseParam =
              PurchaseParam(productDetails: _products[item]!);
          await _iapInstance.buyNonConsumable(purchaseParam: purchaseParam);
        }
      case ProductItemStatus.consumable:
        {
          final PurchaseParam purchaseParam =
              PurchaseParam(productDetails: _products[item]!);
          await _iapInstance.buyConsumable(purchaseParam: purchaseParam);
        }
      case ProductItemStatus.subscription:
        {
          final PurchaseParam purchaseParam =
              PurchaseParam(productDetails: _products[item]!);
          await _iapInstance.buyNonConsumable(purchaseParam: purchaseParam);
        }
    }
  }

  // 復元処理
  Future<void> restorePurchases() async {
    try {
      log('restore start');
      await _iapInstance.restorePurchases();
    } catch (e) {
      log(e.toString());
    }
  }

  // ストリームに渡される購入情報の処理
  void _onPurchaseUpdate(List<PurchaseDetails> purchaseDetailsList) {
    try {
      purchaseDetailsList.forEach((PurchaseDetails purchaseDetails) async {
        if (purchaseDetails.pendingCompletePurchase) {
          await _iapInstance.completePurchase(purchaseDetails);
        }
        final item = PurchaseItem.values.firstWhere(
          (item) => item.productId == purchaseDetails.productID,
        );
        switch (purchaseDetails.status) {
          case PurchaseStatus.pending:
            log('purchase pending');
          case PurchaseStatus.purchased:
            {
              log('purchased');
              await purchasedOrRestored(item);
              _completePurchase(purchaseDetails);
            }
          case PurchaseStatus.restored:
            {
              log('restored');
              await purchasedOrRestored(item);
              _completePurchase(purchaseDetails);
            }
          case PurchaseStatus.error:
            log('purchase failed');
            //　購入処理を終了としてマークする
            _completePurchase(purchaseDetails);
          case PurchaseStatus.canceled:
            {
              log('purchase cancelled');
              //　購入処理を終了としてマークする
              _completePurchase(purchaseDetails);
            }
        }
      });
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> _completePurchase(PurchaseDetails purchaseDetails) async {
    if (purchaseDetails.pendingCompletePurchase) {
      await _iapInstance.completePurchase(purchaseDetails);
    }
  }

  // Future<void> purchasedOrRestored(PurchaseItem item) async {
  //   switch (item) {
  //     case PurchaseItem.removeAd:
  //       {
  //         saveDataHelper.setting =
  //             saveDataHelper.setting.copyWith(removedAd: true);
  //       //               ScaffoldMessenger.of(homeScaffoldContext!).
  //       // showSnackBar(
  //       //   SnackBar(content: Text(AppLocalizations.of(homeScaffoldContext!)!.supportedMessage))
  //       // );
  //       }

  //   }
  // }
}