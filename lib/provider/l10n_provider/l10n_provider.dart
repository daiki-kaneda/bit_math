import 'package:bit_math/global_key/scaffold_key.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


part 'l10n_provider.g.dart';

@riverpod
AppLocalizations? l10n(L10nRef ref) {
  final context = scaffoldKey.currentContext;
  if(context!=null){
    return AppLocalizations.of(context);
  }
  return null;
}

