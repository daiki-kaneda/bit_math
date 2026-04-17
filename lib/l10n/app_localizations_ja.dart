// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get removeAdTitle => '広告を削除しますか？';

  @override
  String get removeAdYes => '削除する';

  @override
  String get removeAdNo => 'いいえ';

  @override
  String get removeAdRestore => '購入復元';

  @override
  String get initialToast => '正解のブロックに頭をぶつけましょう';

  @override
  String get streakToast => '問連続正解！';

  @override
  String get removedAdToast => '広告削除が完了しました';

  @override
  String get maxStreakToast => '連続正解の最高記録は';

  @override
  String get backToHomeHint => 'スタートページに戻る（現在のスコア記録は失われます)';

  @override
  String get resumeHint => '再開する';

  @override
  String get retryHint => '初めからやり直す';

  @override
  String get muteHint => 'ミュート設定';
}
