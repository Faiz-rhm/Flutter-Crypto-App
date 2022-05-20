// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Currencies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Currencies _$$_CurrenciesFromJson(Map<String, dynamic> json) =>
    _$_Currencies(
      id: json['id'] as String,
      logo_url: json['logo_url'] as String,
      name: json['name'] as String,
      price: json['price'] as String,
      marketCap: (json['marketCap'] as num?)?.toDouble(),
      rank: json['rank'] as String,
      rankDelta: json['rankDelta'] as String?,
    );

Map<String, dynamic> _$$_CurrenciesToJson(_$_Currencies instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logo_url': instance.logo_url,
      'name': instance.name,
      'price': instance.price,
      'marketCap': instance.marketCap,
      'rank': instance.rank,
      'rankDelta': instance.rankDelta,
    };
