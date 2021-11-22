// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ingredient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ingredient _$IngredientFromJson(Map<String, dynamic> json) {
  return _Ingredient.fromJson(json);
}

/// @nodoc
class _$IngredientTearOff {
  const _$IngredientTearOff();

  _Ingredient call(
      {required String idIngredient,
      required String strIngredient,
      String? strDescription,
      String? strType}) {
    return _Ingredient(
      idIngredient: idIngredient,
      strIngredient: strIngredient,
      strDescription: strDescription,
      strType: strType,
    );
  }

  Ingredient fromJson(Map<String, Object?> json) {
    return Ingredient.fromJson(json);
  }
}

/// @nodoc
const $Ingredient = _$IngredientTearOff();

/// @nodoc
mixin _$Ingredient {
  String get idIngredient => throw _privateConstructorUsedError;
  String get strIngredient => throw _privateConstructorUsedError;
  String? get strDescription => throw _privateConstructorUsedError;
  String? get strType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientCopyWith<Ingredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientCopyWith<$Res> {
  factory $IngredientCopyWith(
          Ingredient value, $Res Function(Ingredient) then) =
      _$IngredientCopyWithImpl<$Res>;
  $Res call(
      {String idIngredient,
      String strIngredient,
      String? strDescription,
      String? strType});
}

/// @nodoc
class _$IngredientCopyWithImpl<$Res> implements $IngredientCopyWith<$Res> {
  _$IngredientCopyWithImpl(this._value, this._then);

  final Ingredient _value;
  // ignore: unused_field
  final $Res Function(Ingredient) _then;

  @override
  $Res call({
    Object? idIngredient = freezed,
    Object? strIngredient = freezed,
    Object? strDescription = freezed,
    Object? strType = freezed,
  }) {
    return _then(_value.copyWith(
      idIngredient: idIngredient == freezed
          ? _value.idIngredient
          : idIngredient // ignore: cast_nullable_to_non_nullable
              as String,
      strIngredient: strIngredient == freezed
          ? _value.strIngredient
          : strIngredient // ignore: cast_nullable_to_non_nullable
              as String,
      strDescription: strDescription == freezed
          ? _value.strDescription
          : strDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      strType: strType == freezed
          ? _value.strType
          : strType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$IngredientCopyWith<$Res> implements $IngredientCopyWith<$Res> {
  factory _$IngredientCopyWith(
          _Ingredient value, $Res Function(_Ingredient) then) =
      __$IngredientCopyWithImpl<$Res>;
  @override
  $Res call(
      {String idIngredient,
      String strIngredient,
      String? strDescription,
      String? strType});
}

/// @nodoc
class __$IngredientCopyWithImpl<$Res> extends _$IngredientCopyWithImpl<$Res>
    implements _$IngredientCopyWith<$Res> {
  __$IngredientCopyWithImpl(
      _Ingredient _value, $Res Function(_Ingredient) _then)
      : super(_value, (v) => _then(v as _Ingredient));

  @override
  _Ingredient get _value => super._value as _Ingredient;

  @override
  $Res call({
    Object? idIngredient = freezed,
    Object? strIngredient = freezed,
    Object? strDescription = freezed,
    Object? strType = freezed,
  }) {
    return _then(_Ingredient(
      idIngredient: idIngredient == freezed
          ? _value.idIngredient
          : idIngredient // ignore: cast_nullable_to_non_nullable
              as String,
      strIngredient: strIngredient == freezed
          ? _value.strIngredient
          : strIngredient // ignore: cast_nullable_to_non_nullable
              as String,
      strDescription: strDescription == freezed
          ? _value.strDescription
          : strDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      strType: strType == freezed
          ? _value.strType
          : strType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ingredient implements _Ingredient {
  const _$_Ingredient(
      {required this.idIngredient,
      required this.strIngredient,
      this.strDescription,
      this.strType});

  factory _$_Ingredient.fromJson(Map<String, dynamic> json) =>
      _$$_IngredientFromJson(json);

  @override
  final String idIngredient;
  @override
  final String strIngredient;
  @override
  final String? strDescription;
  @override
  final String? strType;

  @override
  String toString() {
    return 'Ingredient(idIngredient: $idIngredient, strIngredient: $strIngredient, strDescription: $strDescription, strType: $strType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Ingredient &&
            (identical(other.idIngredient, idIngredient) ||
                other.idIngredient == idIngredient) &&
            (identical(other.strIngredient, strIngredient) ||
                other.strIngredient == strIngredient) &&
            (identical(other.strDescription, strDescription) ||
                other.strDescription == strDescription) &&
            (identical(other.strType, strType) || other.strType == strType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, idIngredient, strIngredient, strDescription, strType);

  @JsonKey(ignore: true)
  @override
  _$IngredientCopyWith<_Ingredient> get copyWith =>
      __$IngredientCopyWithImpl<_Ingredient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IngredientToJson(this);
  }
}

abstract class _Ingredient implements Ingredient {
  const factory _Ingredient(
      {required String idIngredient,
      required String strIngredient,
      String? strDescription,
      String? strType}) = _$_Ingredient;

  factory _Ingredient.fromJson(Map<String, dynamic> json) =
      _$_Ingredient.fromJson;

  @override
  String get idIngredient;
  @override
  String get strIngredient;
  @override
  String? get strDescription;
  @override
  String? get strType;
  @override
  @JsonKey(ignore: true)
  _$IngredientCopyWith<_Ingredient> get copyWith =>
      throw _privateConstructorUsedError;
}
