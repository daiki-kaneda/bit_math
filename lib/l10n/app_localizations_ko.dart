// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get removeAdTitle => '광고를 제거하시겠습니까?';

  @override
  String get removeAdYes => '제거';

  @override
  String get removeAdNo => '아니요';

  @override
  String get removeAdRestore => '구매 복원';

  @override
  String get initialToast => '정답 블록에 머리를 부딪히세요';

  @override
  String get streakToast => '스트릭!';

  @override
  String get removedAdToast => '광고 제거 완료';

  @override
  String get maxStreakToast => '연속 정답 최고 기록은';

  @override
  String get backToHomeHint => '시작 페이지로 돌아가기 (현재 점수 기록이 사라집니다)';

  @override
  String get resumeHint => '다시 시작';

  @override
  String get retryHint => '처음부터 다시 시도';

  @override
  String get muteHint => '음소거 설정';
}
