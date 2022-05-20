// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'Currencies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Currencies _$CurrenciesFromJson(Map<String, dynamic> json) {
  return _Currencies.fromJson(json);
}

/// @nodoc
mixin _$Currencies {
  String get id => throw _privateConstructorUsedError;
  String get logo_url => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  double? get marketCap => throw _privateConstructorUsedError;
  String get rank => throw _privateConstructorUsedError;
  String? get rankDelta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrenciesCopyWith<Currencies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrenciesCopyWith<$Res> {
  factory $CurrenciesCopyWith(
          Currencies value, $Res Function(Currencies) then) =
      _$CurrenciesCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String logo_url,
      String name,
      String price,
      double? marketCap,
      String rank,
      String? rankDelta});
}

/// @nodoc
class _$CurrenciesCopyWithImpl<$Res> implements $CurrenciesCopyWith<$Res> {
  _$CurrenciesCopyWithImpl(this._value, this._then);

  final Currencies _value;
  // ignore: unused_field
  final $Res Function(Currencies) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? logo_url = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? marketCap = freezed,
    Object? rank = freezed,
    Object? rankDelta = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      logo_url: logo_url == freezed
          ? _value.logo_url
          : logo_url // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      marketCap: marketCap == freezed
          ? _value.marketCap
          : marketCap // ignore: cast_nullable_to_non_nullable
              as double?,
      rank: rank == freezed
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as String,
      rankDelta: rankDelta == freezed
          ? _value.rankDelta
          : rankDelta // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CurrenciesCopyWith<$Res> implements $CurrenciesCopyWith<$Res> {
  factory _$CurrenciesCopyWith(
          _Currencies value, $Res Function(_Currencies) then) =
      __$CurrenciesCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String logo_url,
      String name,
      String price,
      double? marketCap,
      String rank,
      String? rankDelta});
}

/// @nodoc
class __$CurrenciesCopyWithImpl<$Res> extends _$CurrenciesCopyWithImpl<$Res>
    implements _$CurrenciesCopyWith<$Res> {
  __$CurrenciesCopyWithImpl(
      _Currencies _value, $Res Function(_Currencies) _then)
      : super(_value, (v) => _then(v as _Currencies));

  @override
  _Currencies get _value => super._value as _Currencies;

  @override
  $Res call({
    Object? id = freezed,
    Object? logo_url = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? marketCap = freezed,
    Object? rank = freezed,
    Object? rankDelta = freezed,
  }) {
    return _then(_Currencies(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      logo_url: logo_url == freezed
          ? _value.logo_url
          : logo_url // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      marketCap: marketCap == freezed
          ? _value.marketCap
          : marketCap // ignore: cast_nullable_to_non_nullable
              as double?,
      rank: rank == freezed
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as String,
      rankDelta: rankDelta == freezed
          ? _value.rankDelta
          : rankDelta // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Currencies implements _Currencies {
  _$_Currencies(
      {required this.id,
      required this.logo_url,
      required this.name,
      required this.price,
      this.marketCap,
      required this.rank,
      this.rankDelta});

  factory _$_Currencies.fromJson(Map<String, dynamic> json) =>
      _$$_CurrenciesFromJson(json);

  @override
  final String id;
  @override
  final String logo_url;
  @override
  final String name;
  @override
  final String price;
  @override
  final double? marketCap;
  @override
  final String rank;
  @override
  final String? rankDelta;

  @override
  String toString() {
    return 'Currencies(id: $id, logo_url: $logo_url, name: $name, price: $price, marketCap: $marketCap, rank: $rank, rankDelta: $rankDelta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Currencies &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.logo_url, logo_url) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.marketCap, marketCap) &&
            const DeepCollectionEquality().equals(other.rank, rank) &&
            const DeepCollectionEquality().equals(other.rankDelta, rankDelta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(logo_url),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(marketCap),
      const DeepCollectionEquality().hash(rank),
      const DeepCollectionEquality().hash(rankDelta));

  @JsonKey(ignore: true)
  @override
  _$CurrenciesCopyWith<_Currencies> get copyWith =>
      __$CurrenciesCopyWithImpl<_Currencies>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrenciesToJson(this);
  }
}

abstract class _Currencies implements Currencies {
  factory _Currencies(
      {required final String id,
      required final String logo_url,
      required final String name,
      required final String price,
      final double? marketCap,
      required final String rank,
      final String? rankDelta}) = _$_Currencies;

  factory _Currencies.fromJson(Map<String, dynamic> json) =
      _$_Currencies.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get logo_url => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get price => throw _privateConstructorUsedError;
  @override
  double? get marketCap => throw _privateConstructorUsedError;
  @override
  String get rank => throw _privateConstructorUsedError;
  @override
  String? get rankDelta => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CurrenciesCopyWith<_Currencies> get copyWith =>
      throw _privateConstructorUsedError;
}
