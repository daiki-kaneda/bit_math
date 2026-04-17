// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get removeAdTitle => 'Remover anúncios?';

  @override
  String get removeAdYes => 'Remover';

  @override
  String get removeAdNo => 'Não';

  @override
  String get removeAdRestore => 'Restaurar compra';

  @override
  String get initialToast => 'Bata no bloco correto com a cabeça';

  @override
  String get streakToast => 'Sequência!';

  @override
  String get removedAdToast => 'Remoção de anúncios concluída';

  @override
  String get maxStreakToast => 'O maior recorde de acertos consecutivos é';

  @override
  String get backToHomeHint =>
      'Voltar à página inicial (o registro de pontuação atual será perdido)';

  @override
  String get resumeHint => 'Retomar';

  @override
  String get retryHint => 'Tentar novamente desde o início';

  @override
  String get muteHint => 'Configuração de mudo';
}
