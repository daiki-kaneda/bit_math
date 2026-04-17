// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get removeAdTitle => 'Remove ads?';

  @override
  String get removeAdYes => 'Remove';

  @override
  String get removeAdNo => 'No';

  @override
  String get removeAdRestore => 'Restore Purchase';

  @override
  String get initialToast => 'Hit the correct block with your head';

  @override
  String get streakToast => 'Streak!';

  @override
  String get removedAdToast => 'Ad removal completed';

  @override
  String get maxStreakToast =>
      'The highest consecutive correct answer record is';

  @override
  String get backToHomeHint =>
      'Return to the start page (current score record will be lost)';

  @override
  String get resumeHint => 'Resume';

  @override
  String get retryHint => 'Retry from the beginning';

  @override
  String get muteHint => 'Mute setting';
}
