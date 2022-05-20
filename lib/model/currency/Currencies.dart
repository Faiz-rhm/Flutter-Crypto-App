

import 'package:freezed_annotation/freezed_annotation.dart';

part 'Currencies.freezed.dart';
part 'Currencies.g.dart';

@freezed
class Currencies with _$Currencies{
  factory Currencies({
    required String id,
    required String logo_url,
    required String name,
    required String price,
    double? marketCap,
    required String rank,
    String? rankDelta,
  }) = _Currencies;

  factory Currencies.fromJson(Map<String, dynamic> json) => _$CurrenciesFromJson(json);

}