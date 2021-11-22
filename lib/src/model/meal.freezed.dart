// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Meal _$MealFromJson(Map<String, dynamic> json) {
  return _Meal.fromJson(json);
}

/// @nodoc
class _$MealTearOff {
  const _$MealTearOff();

  _Meal call(
      {required String strMeal,
      required String strMealThumb,
      required String idMeal}) {
    return _Meal(
      strMeal: strMeal,
      strMealThumb: strMealThumb,
      idMeal: idMeal,
    );
  }

  Meal fromJson(Map<String, Object?> json) {
    return Meal.fromJson(json);
  }
}

/// @nodoc
const $Meal = _$MealTearOff();

/// @nodoc
mixin _$Meal {
  String get strMeal => throw _privateConstructorUsedError;
  String get strMealThumb => throw _privateConstructorUsedError;
  String get idMeal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealCopyWith<Meal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealCopyWith<$Res> {
  factory $MealCopyWith(Meal value, $Res Function(Meal) then) =
      _$MealCopyWithImpl<$Res>;
  $Res call({String strMeal, String strMealThumb, String idMeal});
}

/// @nodoc
class _$MealCopyWithImpl<$Res> implements $MealCopyWith<$Res> {
  _$MealCopyWithImpl(this._value, this._then);

  final Meal _value;
  // ignore: unused_field
  final $Res Function(Meal) _then;

  @override
  $Res call({
    Object? strMeal = freezed,
    Object? strMealThumb = freezed,
    Object? idMeal = freezed,
  }) {
    return _then(_value.copyWith(
      strMeal: strMeal == freezed
          ? _value.strMeal
          : strMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strMealThumb: strMealThumb == freezed
          ? _value.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String,
      idMeal: idMeal == freezed
          ? _value.idMeal
          : idMeal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MealCopyWith<$Res> implements $MealCopyWith<$Res> {
  factory _$MealCopyWith(_Meal value, $Res Function(_Meal) then) =
      __$MealCopyWithImpl<$Res>;
  @override
  $Res call({String strMeal, String strMealThumb, String idMeal});
}

/// @nodoc
class __$MealCopyWithImpl<$Res> extends _$MealCopyWithImpl<$Res>
    implements _$MealCopyWith<$Res> {
  __$MealCopyWithImpl(_Meal _value, $Res Function(_Meal) _then)
      : super(_value, (v) => _then(v as _Meal));

  @override
  _Meal get _value => super._value as _Meal;

  @override
  $Res call({
    Object? strMeal = freezed,
    Object? strMealThumb = freezed,
    Object? idMeal = freezed,
  }) {
    return _then(_Meal(
      strMeal: strMeal == freezed
          ? _value.strMeal
          : strMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strMealThumb: strMealThumb == freezed
          ? _value.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String,
      idMeal: idMeal == freezed
          ? _value.idMeal
          : idMeal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Meal implements _Meal {
  const _$_Meal(
      {required this.strMeal,
      required this.strMealThumb,
      required this.idMeal});

  factory _$_Meal.fromJson(Map<String, dynamic> json) => _$$_MealFromJson(json);

  @override
  final String strMeal;
  @override
  final String strMealThumb;
  @override
  final String idMeal;

  @override
  String toString() {
    return 'Meal(strMeal: $strMeal, strMealThumb: $strMealThumb, idMeal: $idMeal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Meal &&
            (identical(other.strMeal, strMeal) || other.strMeal == strMeal) &&
            (identical(other.strMealThumb, strMealThumb) ||
                other.strMealThumb == strMealThumb) &&
            (identical(other.idMeal, idMeal) || other.idMeal == idMeal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, strMeal, strMealThumb, idMeal);

  @JsonKey(ignore: true)
  @override
  _$MealCopyWith<_Meal> get copyWith =>
      __$MealCopyWithImpl<_Meal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MealToJson(this);
  }
}

abstract class _Meal implements Meal {
  const factory _Meal(
      {required String strMeal,
      required String strMealThumb,
      required String idMeal}) = _$_Meal;

  factory _Meal.fromJson(Map<String, dynamic> json) = _$_Meal.fromJson;

  @override
  String get strMeal;
  @override
  String get strMealThumb;
  @override
  String get idMeal;
  @override
  @JsonKey(ignore: true)
  _$MealCopyWith<_Meal> get copyWith => throw _privateConstructorUsedError;
}

MealDetail _$MealDetailFromJson(Map<String, dynamic> json) {
  return _MealDetail.fromJson(json);
}

/// @nodoc
class _$MealDetailTearOff {
  const _$MealDetailTearOff();

  _MealDetail call(
      {required String idMeal,
      required String strMeal,
      String? strDrinkAlternate,
      required String strCategory,
      required String strArea,
      required String strInstructions,
      required String strMealThumb,
      String? strTags,
      required String strYoutube,
      required String strIngredient1,
      required String strIngredient2,
      required String strIngredient3,
      String? strIngredient4,
      String? strIngredient5,
      String? strIngredient6,
      String? strIngredient7,
      String? strIngredient8,
      String? strIngredient9,
      String? strIngredient10,
      String? strIngredient11,
      String? strIngredient12,
      String? strIngredient13,
      String? strIngredient14,
      String? strIngredient15,
      String? strIngredient16,
      String? strIngredient17,
      String? strIngredient18,
      String? strIngredient19,
      String? strIngredient20,
      required String strMeasure1,
      required String strMeasure2,
      required String strMeasure3,
      String? strMeasure4,
      String? strMeasure5,
      String? strMeasure6,
      String? strMeasure7,
      String? strMeasure8,
      String? strMeasure9,
      String? strMeasure10,
      String? strMeasure11,
      String? strMeasure12,
      String? strMeasure13,
      String? strMeasure14,
      String? strMeasure15,
      String? strMeasure16,
      String? strMeasure17,
      String? strMeasure18,
      String? strMeasure19,
      String? strMeasure20,
      String? strSource}) {
    return _MealDetail(
      idMeal: idMeal,
      strMeal: strMeal,
      strDrinkAlternate: strDrinkAlternate,
      strCategory: strCategory,
      strArea: strArea,
      strInstructions: strInstructions,
      strMealThumb: strMealThumb,
      strTags: strTags,
      strYoutube: strYoutube,
      strIngredient1: strIngredient1,
      strIngredient2: strIngredient2,
      strIngredient3: strIngredient3,
      strIngredient4: strIngredient4,
      strIngredient5: strIngredient5,
      strIngredient6: strIngredient6,
      strIngredient7: strIngredient7,
      strIngredient8: strIngredient8,
      strIngredient9: strIngredient9,
      strIngredient10: strIngredient10,
      strIngredient11: strIngredient11,
      strIngredient12: strIngredient12,
      strIngredient13: strIngredient13,
      strIngredient14: strIngredient14,
      strIngredient15: strIngredient15,
      strIngredient16: strIngredient16,
      strIngredient17: strIngredient17,
      strIngredient18: strIngredient18,
      strIngredient19: strIngredient19,
      strIngredient20: strIngredient20,
      strMeasure1: strMeasure1,
      strMeasure2: strMeasure2,
      strMeasure3: strMeasure3,
      strMeasure4: strMeasure4,
      strMeasure5: strMeasure5,
      strMeasure6: strMeasure6,
      strMeasure7: strMeasure7,
      strMeasure8: strMeasure8,
      strMeasure9: strMeasure9,
      strMeasure10: strMeasure10,
      strMeasure11: strMeasure11,
      strMeasure12: strMeasure12,
      strMeasure13: strMeasure13,
      strMeasure14: strMeasure14,
      strMeasure15: strMeasure15,
      strMeasure16: strMeasure16,
      strMeasure17: strMeasure17,
      strMeasure18: strMeasure18,
      strMeasure19: strMeasure19,
      strMeasure20: strMeasure20,
      strSource: strSource,
    );
  }

  MealDetail fromJson(Map<String, Object?> json) {
    return MealDetail.fromJson(json);
  }
}

/// @nodoc
const $MealDetail = _$MealDetailTearOff();

/// @nodoc
mixin _$MealDetail {
  String get idMeal => throw _privateConstructorUsedError;
  String get strMeal => throw _privateConstructorUsedError;
  String? get strDrinkAlternate => throw _privateConstructorUsedError;
  String get strCategory => throw _privateConstructorUsedError;
  String get strArea => throw _privateConstructorUsedError;
  String get strInstructions => throw _privateConstructorUsedError;
  String get strMealThumb => throw _privateConstructorUsedError;
  String? get strTags => throw _privateConstructorUsedError;
  String get strYoutube => throw _privateConstructorUsedError;
  String get strIngredient1 => throw _privateConstructorUsedError;
  String get strIngredient2 => throw _privateConstructorUsedError;
  String get strIngredient3 => throw _privateConstructorUsedError;
  String? get strIngredient4 => throw _privateConstructorUsedError;
  String? get strIngredient5 => throw _privateConstructorUsedError;
  String? get strIngredient6 => throw _privateConstructorUsedError;
  String? get strIngredient7 => throw _privateConstructorUsedError;
  String? get strIngredient8 => throw _privateConstructorUsedError;
  String? get strIngredient9 => throw _privateConstructorUsedError;
  String? get strIngredient10 => throw _privateConstructorUsedError;
  String? get strIngredient11 => throw _privateConstructorUsedError;
  String? get strIngredient12 => throw _privateConstructorUsedError;
  String? get strIngredient13 => throw _privateConstructorUsedError;
  String? get strIngredient14 => throw _privateConstructorUsedError;
  String? get strIngredient15 => throw _privateConstructorUsedError;
  String? get strIngredient16 => throw _privateConstructorUsedError;
  String? get strIngredient17 => throw _privateConstructorUsedError;
  String? get strIngredient18 => throw _privateConstructorUsedError;
  String? get strIngredient19 => throw _privateConstructorUsedError;
  String? get strIngredient20 => throw _privateConstructorUsedError;
  String get strMeasure1 => throw _privateConstructorUsedError;
  String get strMeasure2 => throw _privateConstructorUsedError;
  String get strMeasure3 => throw _privateConstructorUsedError;
  String? get strMeasure4 => throw _privateConstructorUsedError;
  String? get strMeasure5 => throw _privateConstructorUsedError;
  String? get strMeasure6 => throw _privateConstructorUsedError;
  String? get strMeasure7 => throw _privateConstructorUsedError;
  String? get strMeasure8 => throw _privateConstructorUsedError;
  String? get strMeasure9 => throw _privateConstructorUsedError;
  String? get strMeasure10 => throw _privateConstructorUsedError;
  String? get strMeasure11 => throw _privateConstructorUsedError;
  String? get strMeasure12 => throw _privateConstructorUsedError;
  String? get strMeasure13 => throw _privateConstructorUsedError;
  String? get strMeasure14 => throw _privateConstructorUsedError;
  String? get strMeasure15 => throw _privateConstructorUsedError;
  String? get strMeasure16 => throw _privateConstructorUsedError;
  String? get strMeasure17 => throw _privateConstructorUsedError;
  String? get strMeasure18 => throw _privateConstructorUsedError;
  String? get strMeasure19 => throw _privateConstructorUsedError;
  String? get strMeasure20 => throw _privateConstructorUsedError;
  String? get strSource => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealDetailCopyWith<MealDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealDetailCopyWith<$Res> {
  factory $MealDetailCopyWith(
          MealDetail value, $Res Function(MealDetail) then) =
      _$MealDetailCopyWithImpl<$Res>;
  $Res call(
      {String idMeal,
      String strMeal,
      String? strDrinkAlternate,
      String strCategory,
      String strArea,
      String strInstructions,
      String strMealThumb,
      String? strTags,
      String strYoutube,
      String strIngredient1,
      String strIngredient2,
      String strIngredient3,
      String? strIngredient4,
      String? strIngredient5,
      String? strIngredient6,
      String? strIngredient7,
      String? strIngredient8,
      String? strIngredient9,
      String? strIngredient10,
      String? strIngredient11,
      String? strIngredient12,
      String? strIngredient13,
      String? strIngredient14,
      String? strIngredient15,
      String? strIngredient16,
      String? strIngredient17,
      String? strIngredient18,
      String? strIngredient19,
      String? strIngredient20,
      String strMeasure1,
      String strMeasure2,
      String strMeasure3,
      String? strMeasure4,
      String? strMeasure5,
      String? strMeasure6,
      String? strMeasure7,
      String? strMeasure8,
      String? strMeasure9,
      String? strMeasure10,
      String? strMeasure11,
      String? strMeasure12,
      String? strMeasure13,
      String? strMeasure14,
      String? strMeasure15,
      String? strMeasure16,
      String? strMeasure17,
      String? strMeasure18,
      String? strMeasure19,
      String? strMeasure20,
      String? strSource});
}

/// @nodoc
class _$MealDetailCopyWithImpl<$Res> implements $MealDetailCopyWith<$Res> {
  _$MealDetailCopyWithImpl(this._value, this._then);

  final MealDetail _value;
  // ignore: unused_field
  final $Res Function(MealDetail) _then;

  @override
  $Res call({
    Object? idMeal = freezed,
    Object? strMeal = freezed,
    Object? strDrinkAlternate = freezed,
    Object? strCategory = freezed,
    Object? strArea = freezed,
    Object? strInstructions = freezed,
    Object? strMealThumb = freezed,
    Object? strTags = freezed,
    Object? strYoutube = freezed,
    Object? strIngredient1 = freezed,
    Object? strIngredient2 = freezed,
    Object? strIngredient3 = freezed,
    Object? strIngredient4 = freezed,
    Object? strIngredient5 = freezed,
    Object? strIngredient6 = freezed,
    Object? strIngredient7 = freezed,
    Object? strIngredient8 = freezed,
    Object? strIngredient9 = freezed,
    Object? strIngredient10 = freezed,
    Object? strIngredient11 = freezed,
    Object? strIngredient12 = freezed,
    Object? strIngredient13 = freezed,
    Object? strIngredient14 = freezed,
    Object? strIngredient15 = freezed,
    Object? strIngredient16 = freezed,
    Object? strIngredient17 = freezed,
    Object? strIngredient18 = freezed,
    Object? strIngredient19 = freezed,
    Object? strIngredient20 = freezed,
    Object? strMeasure1 = freezed,
    Object? strMeasure2 = freezed,
    Object? strMeasure3 = freezed,
    Object? strMeasure4 = freezed,
    Object? strMeasure5 = freezed,
    Object? strMeasure6 = freezed,
    Object? strMeasure7 = freezed,
    Object? strMeasure8 = freezed,
    Object? strMeasure9 = freezed,
    Object? strMeasure10 = freezed,
    Object? strMeasure11 = freezed,
    Object? strMeasure12 = freezed,
    Object? strMeasure13 = freezed,
    Object? strMeasure14 = freezed,
    Object? strMeasure15 = freezed,
    Object? strMeasure16 = freezed,
    Object? strMeasure17 = freezed,
    Object? strMeasure18 = freezed,
    Object? strMeasure19 = freezed,
    Object? strMeasure20 = freezed,
    Object? strSource = freezed,
  }) {
    return _then(_value.copyWith(
      idMeal: idMeal == freezed
          ? _value.idMeal
          : idMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strMeal: strMeal == freezed
          ? _value.strMeal
          : strMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strDrinkAlternate: strDrinkAlternate == freezed
          ? _value.strDrinkAlternate
          : strDrinkAlternate // ignore: cast_nullable_to_non_nullable
              as String?,
      strCategory: strCategory == freezed
          ? _value.strCategory
          : strCategory // ignore: cast_nullable_to_non_nullable
              as String,
      strArea: strArea == freezed
          ? _value.strArea
          : strArea // ignore: cast_nullable_to_non_nullable
              as String,
      strInstructions: strInstructions == freezed
          ? _value.strInstructions
          : strInstructions // ignore: cast_nullable_to_non_nullable
              as String,
      strMealThumb: strMealThumb == freezed
          ? _value.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String,
      strTags: strTags == freezed
          ? _value.strTags
          : strTags // ignore: cast_nullable_to_non_nullable
              as String?,
      strYoutube: strYoutube == freezed
          ? _value.strYoutube
          : strYoutube // ignore: cast_nullable_to_non_nullable
              as String,
      strIngredient1: strIngredient1 == freezed
          ? _value.strIngredient1
          : strIngredient1 // ignore: cast_nullable_to_non_nullable
              as String,
      strIngredient2: strIngredient2 == freezed
          ? _value.strIngredient2
          : strIngredient2 // ignore: cast_nullable_to_non_nullable
              as String,
      strIngredient3: strIngredient3 == freezed
          ? _value.strIngredient3
          : strIngredient3 // ignore: cast_nullable_to_non_nullable
              as String,
      strIngredient4: strIngredient4 == freezed
          ? _value.strIngredient4
          : strIngredient4 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient5: strIngredient5 == freezed
          ? _value.strIngredient5
          : strIngredient5 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient6: strIngredient6 == freezed
          ? _value.strIngredient6
          : strIngredient6 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient7: strIngredient7 == freezed
          ? _value.strIngredient7
          : strIngredient7 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient8: strIngredient8 == freezed
          ? _value.strIngredient8
          : strIngredient8 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient9: strIngredient9 == freezed
          ? _value.strIngredient9
          : strIngredient9 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient10: strIngredient10 == freezed
          ? _value.strIngredient10
          : strIngredient10 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient11: strIngredient11 == freezed
          ? _value.strIngredient11
          : strIngredient11 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient12: strIngredient12 == freezed
          ? _value.strIngredient12
          : strIngredient12 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient13: strIngredient13 == freezed
          ? _value.strIngredient13
          : strIngredient13 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient14: strIngredient14 == freezed
          ? _value.strIngredient14
          : strIngredient14 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient15: strIngredient15 == freezed
          ? _value.strIngredient15
          : strIngredient15 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient16: strIngredient16 == freezed
          ? _value.strIngredient16
          : strIngredient16 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient17: strIngredient17 == freezed
          ? _value.strIngredient17
          : strIngredient17 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient18: strIngredient18 == freezed
          ? _value.strIngredient18
          : strIngredient18 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient19: strIngredient19 == freezed
          ? _value.strIngredient19
          : strIngredient19 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient20: strIngredient20 == freezed
          ? _value.strIngredient20
          : strIngredient20 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure1: strMeasure1 == freezed
          ? _value.strMeasure1
          : strMeasure1 // ignore: cast_nullable_to_non_nullable
              as String,
      strMeasure2: strMeasure2 == freezed
          ? _value.strMeasure2
          : strMeasure2 // ignore: cast_nullable_to_non_nullable
              as String,
      strMeasure3: strMeasure3 == freezed
          ? _value.strMeasure3
          : strMeasure3 // ignore: cast_nullable_to_non_nullable
              as String,
      strMeasure4: strMeasure4 == freezed
          ? _value.strMeasure4
          : strMeasure4 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure5: strMeasure5 == freezed
          ? _value.strMeasure5
          : strMeasure5 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure6: strMeasure6 == freezed
          ? _value.strMeasure6
          : strMeasure6 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure7: strMeasure7 == freezed
          ? _value.strMeasure7
          : strMeasure7 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure8: strMeasure8 == freezed
          ? _value.strMeasure8
          : strMeasure8 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure9: strMeasure9 == freezed
          ? _value.strMeasure9
          : strMeasure9 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure10: strMeasure10 == freezed
          ? _value.strMeasure10
          : strMeasure10 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure11: strMeasure11 == freezed
          ? _value.strMeasure11
          : strMeasure11 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure12: strMeasure12 == freezed
          ? _value.strMeasure12
          : strMeasure12 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure13: strMeasure13 == freezed
          ? _value.strMeasure13
          : strMeasure13 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure14: strMeasure14 == freezed
          ? _value.strMeasure14
          : strMeasure14 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure15: strMeasure15 == freezed
          ? _value.strMeasure15
          : strMeasure15 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure16: strMeasure16 == freezed
          ? _value.strMeasure16
          : strMeasure16 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure17: strMeasure17 == freezed
          ? _value.strMeasure17
          : strMeasure17 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure18: strMeasure18 == freezed
          ? _value.strMeasure18
          : strMeasure18 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure19: strMeasure19 == freezed
          ? _value.strMeasure19
          : strMeasure19 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure20: strMeasure20 == freezed
          ? _value.strMeasure20
          : strMeasure20 // ignore: cast_nullable_to_non_nullable
              as String?,
      strSource: strSource == freezed
          ? _value.strSource
          : strSource // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MealDetailCopyWith<$Res> implements $MealDetailCopyWith<$Res> {
  factory _$MealDetailCopyWith(
          _MealDetail value, $Res Function(_MealDetail) then) =
      __$MealDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {String idMeal,
      String strMeal,
      String? strDrinkAlternate,
      String strCategory,
      String strArea,
      String strInstructions,
      String strMealThumb,
      String? strTags,
      String strYoutube,
      String strIngredient1,
      String strIngredient2,
      String strIngredient3,
      String? strIngredient4,
      String? strIngredient5,
      String? strIngredient6,
      String? strIngredient7,
      String? strIngredient8,
      String? strIngredient9,
      String? strIngredient10,
      String? strIngredient11,
      String? strIngredient12,
      String? strIngredient13,
      String? strIngredient14,
      String? strIngredient15,
      String? strIngredient16,
      String? strIngredient17,
      String? strIngredient18,
      String? strIngredient19,
      String? strIngredient20,
      String strMeasure1,
      String strMeasure2,
      String strMeasure3,
      String? strMeasure4,
      String? strMeasure5,
      String? strMeasure6,
      String? strMeasure7,
      String? strMeasure8,
      String? strMeasure9,
      String? strMeasure10,
      String? strMeasure11,
      String? strMeasure12,
      String? strMeasure13,
      String? strMeasure14,
      String? strMeasure15,
      String? strMeasure16,
      String? strMeasure17,
      String? strMeasure18,
      String? strMeasure19,
      String? strMeasure20,
      String? strSource});
}

/// @nodoc
class __$MealDetailCopyWithImpl<$Res> extends _$MealDetailCopyWithImpl<$Res>
    implements _$MealDetailCopyWith<$Res> {
  __$MealDetailCopyWithImpl(
      _MealDetail _value, $Res Function(_MealDetail) _then)
      : super(_value, (v) => _then(v as _MealDetail));

  @override
  _MealDetail get _value => super._value as _MealDetail;

  @override
  $Res call({
    Object? idMeal = freezed,
    Object? strMeal = freezed,
    Object? strDrinkAlternate = freezed,
    Object? strCategory = freezed,
    Object? strArea = freezed,
    Object? strInstructions = freezed,
    Object? strMealThumb = freezed,
    Object? strTags = freezed,
    Object? strYoutube = freezed,
    Object? strIngredient1 = freezed,
    Object? strIngredient2 = freezed,
    Object? strIngredient3 = freezed,
    Object? strIngredient4 = freezed,
    Object? strIngredient5 = freezed,
    Object? strIngredient6 = freezed,
    Object? strIngredient7 = freezed,
    Object? strIngredient8 = freezed,
    Object? strIngredient9 = freezed,
    Object? strIngredient10 = freezed,
    Object? strIngredient11 = freezed,
    Object? strIngredient12 = freezed,
    Object? strIngredient13 = freezed,
    Object? strIngredient14 = freezed,
    Object? strIngredient15 = freezed,
    Object? strIngredient16 = freezed,
    Object? strIngredient17 = freezed,
    Object? strIngredient18 = freezed,
    Object? strIngredient19 = freezed,
    Object? strIngredient20 = freezed,
    Object? strMeasure1 = freezed,
    Object? strMeasure2 = freezed,
    Object? strMeasure3 = freezed,
    Object? strMeasure4 = freezed,
    Object? strMeasure5 = freezed,
    Object? strMeasure6 = freezed,
    Object? strMeasure7 = freezed,
    Object? strMeasure8 = freezed,
    Object? strMeasure9 = freezed,
    Object? strMeasure10 = freezed,
    Object? strMeasure11 = freezed,
    Object? strMeasure12 = freezed,
    Object? strMeasure13 = freezed,
    Object? strMeasure14 = freezed,
    Object? strMeasure15 = freezed,
    Object? strMeasure16 = freezed,
    Object? strMeasure17 = freezed,
    Object? strMeasure18 = freezed,
    Object? strMeasure19 = freezed,
    Object? strMeasure20 = freezed,
    Object? strSource = freezed,
  }) {
    return _then(_MealDetail(
      idMeal: idMeal == freezed
          ? _value.idMeal
          : idMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strMeal: strMeal == freezed
          ? _value.strMeal
          : strMeal // ignore: cast_nullable_to_non_nullable
              as String,
      strDrinkAlternate: strDrinkAlternate == freezed
          ? _value.strDrinkAlternate
          : strDrinkAlternate // ignore: cast_nullable_to_non_nullable
              as String?,
      strCategory: strCategory == freezed
          ? _value.strCategory
          : strCategory // ignore: cast_nullable_to_non_nullable
              as String,
      strArea: strArea == freezed
          ? _value.strArea
          : strArea // ignore: cast_nullable_to_non_nullable
              as String,
      strInstructions: strInstructions == freezed
          ? _value.strInstructions
          : strInstructions // ignore: cast_nullable_to_non_nullable
              as String,
      strMealThumb: strMealThumb == freezed
          ? _value.strMealThumb
          : strMealThumb // ignore: cast_nullable_to_non_nullable
              as String,
      strTags: strTags == freezed
          ? _value.strTags
          : strTags // ignore: cast_nullable_to_non_nullable
              as String?,
      strYoutube: strYoutube == freezed
          ? _value.strYoutube
          : strYoutube // ignore: cast_nullable_to_non_nullable
              as String,
      strIngredient1: strIngredient1 == freezed
          ? _value.strIngredient1
          : strIngredient1 // ignore: cast_nullable_to_non_nullable
              as String,
      strIngredient2: strIngredient2 == freezed
          ? _value.strIngredient2
          : strIngredient2 // ignore: cast_nullable_to_non_nullable
              as String,
      strIngredient3: strIngredient3 == freezed
          ? _value.strIngredient3
          : strIngredient3 // ignore: cast_nullable_to_non_nullable
              as String,
      strIngredient4: strIngredient4 == freezed
          ? _value.strIngredient4
          : strIngredient4 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient5: strIngredient5 == freezed
          ? _value.strIngredient5
          : strIngredient5 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient6: strIngredient6 == freezed
          ? _value.strIngredient6
          : strIngredient6 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient7: strIngredient7 == freezed
          ? _value.strIngredient7
          : strIngredient7 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient8: strIngredient8 == freezed
          ? _value.strIngredient8
          : strIngredient8 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient9: strIngredient9 == freezed
          ? _value.strIngredient9
          : strIngredient9 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient10: strIngredient10 == freezed
          ? _value.strIngredient10
          : strIngredient10 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient11: strIngredient11 == freezed
          ? _value.strIngredient11
          : strIngredient11 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient12: strIngredient12 == freezed
          ? _value.strIngredient12
          : strIngredient12 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient13: strIngredient13 == freezed
          ? _value.strIngredient13
          : strIngredient13 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient14: strIngredient14 == freezed
          ? _value.strIngredient14
          : strIngredient14 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient15: strIngredient15 == freezed
          ? _value.strIngredient15
          : strIngredient15 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient16: strIngredient16 == freezed
          ? _value.strIngredient16
          : strIngredient16 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient17: strIngredient17 == freezed
          ? _value.strIngredient17
          : strIngredient17 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient18: strIngredient18 == freezed
          ? _value.strIngredient18
          : strIngredient18 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient19: strIngredient19 == freezed
          ? _value.strIngredient19
          : strIngredient19 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient20: strIngredient20 == freezed
          ? _value.strIngredient20
          : strIngredient20 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure1: strMeasure1 == freezed
          ? _value.strMeasure1
          : strMeasure1 // ignore: cast_nullable_to_non_nullable
              as String,
      strMeasure2: strMeasure2 == freezed
          ? _value.strMeasure2
          : strMeasure2 // ignore: cast_nullable_to_non_nullable
              as String,
      strMeasure3: strMeasure3 == freezed
          ? _value.strMeasure3
          : strMeasure3 // ignore: cast_nullable_to_non_nullable
              as String,
      strMeasure4: strMeasure4 == freezed
          ? _value.strMeasure4
          : strMeasure4 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure5: strMeasure5 == freezed
          ? _value.strMeasure5
          : strMeasure5 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure6: strMeasure6 == freezed
          ? _value.strMeasure6
          : strMeasure6 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure7: strMeasure7 == freezed
          ? _value.strMeasure7
          : strMeasure7 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure8: strMeasure8 == freezed
          ? _value.strMeasure8
          : strMeasure8 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure9: strMeasure9 == freezed
          ? _value.strMeasure9
          : strMeasure9 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure10: strMeasure10 == freezed
          ? _value.strMeasure10
          : strMeasure10 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure11: strMeasure11 == freezed
          ? _value.strMeasure11
          : strMeasure11 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure12: strMeasure12 == freezed
          ? _value.strMeasure12
          : strMeasure12 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure13: strMeasure13 == freezed
          ? _value.strMeasure13
          : strMeasure13 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure14: strMeasure14 == freezed
          ? _value.strMeasure14
          : strMeasure14 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure15: strMeasure15 == freezed
          ? _value.strMeasure15
          : strMeasure15 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure16: strMeasure16 == freezed
          ? _value.strMeasure16
          : strMeasure16 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure17: strMeasure17 == freezed
          ? _value.strMeasure17
          : strMeasure17 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure18: strMeasure18 == freezed
          ? _value.strMeasure18
          : strMeasure18 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure19: strMeasure19 == freezed
          ? _value.strMeasure19
          : strMeasure19 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure20: strMeasure20 == freezed
          ? _value.strMeasure20
          : strMeasure20 // ignore: cast_nullable_to_non_nullable
              as String?,
      strSource: strSource == freezed
          ? _value.strSource
          : strSource // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MealDetail implements _MealDetail {
  const _$_MealDetail(
      {required this.idMeal,
      required this.strMeal,
      this.strDrinkAlternate,
      required this.strCategory,
      required this.strArea,
      required this.strInstructions,
      required this.strMealThumb,
      this.strTags,
      required this.strYoutube,
      required this.strIngredient1,
      required this.strIngredient2,
      required this.strIngredient3,
      this.strIngredient4,
      this.strIngredient5,
      this.strIngredient6,
      this.strIngredient7,
      this.strIngredient8,
      this.strIngredient9,
      this.strIngredient10,
      this.strIngredient11,
      this.strIngredient12,
      this.strIngredient13,
      this.strIngredient14,
      this.strIngredient15,
      this.strIngredient16,
      this.strIngredient17,
      this.strIngredient18,
      this.strIngredient19,
      this.strIngredient20,
      required this.strMeasure1,
      required this.strMeasure2,
      required this.strMeasure3,
      this.strMeasure4,
      this.strMeasure5,
      this.strMeasure6,
      this.strMeasure7,
      this.strMeasure8,
      this.strMeasure9,
      this.strMeasure10,
      this.strMeasure11,
      this.strMeasure12,
      this.strMeasure13,
      this.strMeasure14,
      this.strMeasure15,
      this.strMeasure16,
      this.strMeasure17,
      this.strMeasure18,
      this.strMeasure19,
      this.strMeasure20,
      this.strSource});

  factory _$_MealDetail.fromJson(Map<String, dynamic> json) =>
      _$$_MealDetailFromJson(json);

  @override
  final String idMeal;
  @override
  final String strMeal;
  @override
  final String? strDrinkAlternate;
  @override
  final String strCategory;
  @override
  final String strArea;
  @override
  final String strInstructions;
  @override
  final String strMealThumb;
  @override
  final String? strTags;
  @override
  final String strYoutube;
  @override
  final String strIngredient1;
  @override
  final String strIngredient2;
  @override
  final String strIngredient3;
  @override
  final String? strIngredient4;
  @override
  final String? strIngredient5;
  @override
  final String? strIngredient6;
  @override
  final String? strIngredient7;
  @override
  final String? strIngredient8;
  @override
  final String? strIngredient9;
  @override
  final String? strIngredient10;
  @override
  final String? strIngredient11;
  @override
  final String? strIngredient12;
  @override
  final String? strIngredient13;
  @override
  final String? strIngredient14;
  @override
  final String? strIngredient15;
  @override
  final String? strIngredient16;
  @override
  final String? strIngredient17;
  @override
  final String? strIngredient18;
  @override
  final String? strIngredient19;
  @override
  final String? strIngredient20;
  @override
  final String strMeasure1;
  @override
  final String strMeasure2;
  @override
  final String strMeasure3;
  @override
  final String? strMeasure4;
  @override
  final String? strMeasure5;
  @override
  final String? strMeasure6;
  @override
  final String? strMeasure7;
  @override
  final String? strMeasure8;
  @override
  final String? strMeasure9;
  @override
  final String? strMeasure10;
  @override
  final String? strMeasure11;
  @override
  final String? strMeasure12;
  @override
  final String? strMeasure13;
  @override
  final String? strMeasure14;
  @override
  final String? strMeasure15;
  @override
  final String? strMeasure16;
  @override
  final String? strMeasure17;
  @override
  final String? strMeasure18;
  @override
  final String? strMeasure19;
  @override
  final String? strMeasure20;
  @override
  final String? strSource;

  @override
  String toString() {
    return 'MealDetail(idMeal: $idMeal, strMeal: $strMeal, strDrinkAlternate: $strDrinkAlternate, strCategory: $strCategory, strArea: $strArea, strInstructions: $strInstructions, strMealThumb: $strMealThumb, strTags: $strTags, strYoutube: $strYoutube, strIngredient1: $strIngredient1, strIngredient2: $strIngredient2, strIngredient3: $strIngredient3, strIngredient4: $strIngredient4, strIngredient5: $strIngredient5, strIngredient6: $strIngredient6, strIngredient7: $strIngredient7, strIngredient8: $strIngredient8, strIngredient9: $strIngredient9, strIngredient10: $strIngredient10, strIngredient11: $strIngredient11, strIngredient12: $strIngredient12, strIngredient13: $strIngredient13, strIngredient14: $strIngredient14, strIngredient15: $strIngredient15, strIngredient16: $strIngredient16, strIngredient17: $strIngredient17, strIngredient18: $strIngredient18, strIngredient19: $strIngredient19, strIngredient20: $strIngredient20, strMeasure1: $strMeasure1, strMeasure2: $strMeasure2, strMeasure3: $strMeasure3, strMeasure4: $strMeasure4, strMeasure5: $strMeasure5, strMeasure6: $strMeasure6, strMeasure7: $strMeasure7, strMeasure8: $strMeasure8, strMeasure9: $strMeasure9, strMeasure10: $strMeasure10, strMeasure11: $strMeasure11, strMeasure12: $strMeasure12, strMeasure13: $strMeasure13, strMeasure14: $strMeasure14, strMeasure15: $strMeasure15, strMeasure16: $strMeasure16, strMeasure17: $strMeasure17, strMeasure18: $strMeasure18, strMeasure19: $strMeasure19, strMeasure20: $strMeasure20, strSource: $strSource)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MealDetail &&
            (identical(other.idMeal, idMeal) || other.idMeal == idMeal) &&
            (identical(other.strMeal, strMeal) || other.strMeal == strMeal) &&
            (identical(other.strDrinkAlternate, strDrinkAlternate) ||
                other.strDrinkAlternate == strDrinkAlternate) &&
            (identical(other.strCategory, strCategory) ||
                other.strCategory == strCategory) &&
            (identical(other.strArea, strArea) || other.strArea == strArea) &&
            (identical(other.strInstructions, strInstructions) ||
                other.strInstructions == strInstructions) &&
            (identical(other.strMealThumb, strMealThumb) ||
                other.strMealThumb == strMealThumb) &&
            (identical(other.strTags, strTags) || other.strTags == strTags) &&
            (identical(other.strYoutube, strYoutube) ||
                other.strYoutube == strYoutube) &&
            (identical(other.strIngredient1, strIngredient1) ||
                other.strIngredient1 == strIngredient1) &&
            (identical(other.strIngredient2, strIngredient2) ||
                other.strIngredient2 == strIngredient2) &&
            (identical(other.strIngredient3, strIngredient3) ||
                other.strIngredient3 == strIngredient3) &&
            (identical(other.strIngredient4, strIngredient4) ||
                other.strIngredient4 == strIngredient4) &&
            (identical(other.strIngredient5, strIngredient5) ||
                other.strIngredient5 == strIngredient5) &&
            (identical(other.strIngredient6, strIngredient6) ||
                other.strIngredient6 == strIngredient6) &&
            (identical(other.strIngredient7, strIngredient7) ||
                other.strIngredient7 == strIngredient7) &&
            (identical(other.strIngredient8, strIngredient8) ||
                other.strIngredient8 == strIngredient8) &&
            (identical(other.strIngredient9, strIngredient9) ||
                other.strIngredient9 == strIngredient9) &&
            (identical(other.strIngredient10, strIngredient10) ||
                other.strIngredient10 == strIngredient10) &&
            (identical(other.strIngredient11, strIngredient11) ||
                other.strIngredient11 == strIngredient11) &&
            (identical(other.strIngredient12, strIngredient12) ||
                other.strIngredient12 == strIngredient12) &&
            (identical(other.strIngredient13, strIngredient13) ||
                other.strIngredient13 == strIngredient13) &&
            (identical(other.strIngredient14, strIngredient14) ||
                other.strIngredient14 == strIngredient14) &&
            (identical(other.strIngredient15, strIngredient15) ||
                other.strIngredient15 == strIngredient15) &&
            (identical(other.strIngredient16, strIngredient16) ||
                other.strIngredient16 == strIngredient16) &&
            (identical(other.strIngredient17, strIngredient17) ||
                other.strIngredient17 == strIngredient17) &&
            (identical(other.strIngredient18, strIngredient18) ||
                other.strIngredient18 == strIngredient18) &&
            (identical(other.strIngredient19, strIngredient19) ||
                other.strIngredient19 == strIngredient19) &&
            (identical(other.strIngredient20, strIngredient20) ||
                other.strIngredient20 == strIngredient20) &&
            (identical(other.strMeasure1, strMeasure1) ||
                other.strMeasure1 == strMeasure1) &&
            (identical(other.strMeasure2, strMeasure2) ||
                other.strMeasure2 == strMeasure2) &&
            (identical(other.strMeasure3, strMeasure3) ||
                other.strMeasure3 == strMeasure3) &&
            (identical(other.strMeasure4, strMeasure4) ||
                other.strMeasure4 == strMeasure4) &&
            (identical(other.strMeasure5, strMeasure5) ||
                other.strMeasure5 == strMeasure5) &&
            (identical(other.strMeasure6, strMeasure6) ||
                other.strMeasure6 == strMeasure6) &&
            (identical(other.strMeasure7, strMeasure7) ||
                other.strMeasure7 == strMeasure7) &&
            (identical(other.strMeasure8, strMeasure8) ||
                other.strMeasure8 == strMeasure8) &&
            (identical(other.strMeasure9, strMeasure9) ||
                other.strMeasure9 == strMeasure9) &&
            (identical(other.strMeasure10, strMeasure10) ||
                other.strMeasure10 == strMeasure10) &&
            (identical(other.strMeasure11, strMeasure11) ||
                other.strMeasure11 == strMeasure11) &&
            (identical(other.strMeasure12, strMeasure12) ||
                other.strMeasure12 == strMeasure12) &&
            (identical(other.strMeasure13, strMeasure13) ||
                other.strMeasure13 == strMeasure13) &&
            (identical(other.strMeasure14, strMeasure14) ||
                other.strMeasure14 == strMeasure14) &&
            (identical(other.strMeasure15, strMeasure15) ||
                other.strMeasure15 == strMeasure15) &&
            (identical(other.strMeasure16, strMeasure16) ||
                other.strMeasure16 == strMeasure16) &&
            (identical(other.strMeasure17, strMeasure17) ||
                other.strMeasure17 == strMeasure17) &&
            (identical(other.strMeasure18, strMeasure18) ||
                other.strMeasure18 == strMeasure18) &&
            (identical(other.strMeasure19, strMeasure19) || other.strMeasure19 == strMeasure19) &&
            (identical(other.strMeasure20, strMeasure20) || other.strMeasure20 == strMeasure20) &&
            (identical(other.strSource, strSource) || other.strSource == strSource));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        idMeal,
        strMeal,
        strDrinkAlternate,
        strCategory,
        strArea,
        strInstructions,
        strMealThumb,
        strTags,
        strYoutube,
        strIngredient1,
        strIngredient2,
        strIngredient3,
        strIngredient4,
        strIngredient5,
        strIngredient6,
        strIngredient7,
        strIngredient8,
        strIngredient9,
        strIngredient10,
        strIngredient11,
        strIngredient12,
        strIngredient13,
        strIngredient14,
        strIngredient15,
        strIngredient16,
        strIngredient17,
        strIngredient18,
        strIngredient19,
        strIngredient20,
        strMeasure1,
        strMeasure2,
        strMeasure3,
        strMeasure4,
        strMeasure5,
        strMeasure6,
        strMeasure7,
        strMeasure8,
        strMeasure9,
        strMeasure10,
        strMeasure11,
        strMeasure12,
        strMeasure13,
        strMeasure14,
        strMeasure15,
        strMeasure16,
        strMeasure17,
        strMeasure18,
        strMeasure19,
        strMeasure20,
        strSource
      ]);

  @JsonKey(ignore: true)
  @override
  _$MealDetailCopyWith<_MealDetail> get copyWith =>
      __$MealDetailCopyWithImpl<_MealDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MealDetailToJson(this);
  }
}

abstract class _MealDetail implements MealDetail {
  const factory _MealDetail(
      {required String idMeal,
      required String strMeal,
      String? strDrinkAlternate,
      required String strCategory,
      required String strArea,
      required String strInstructions,
      required String strMealThumb,
      String? strTags,
      required String strYoutube,
      required String strIngredient1,
      required String strIngredient2,
      required String strIngredient3,
      String? strIngredient4,
      String? strIngredient5,
      String? strIngredient6,
      String? strIngredient7,
      String? strIngredient8,
      String? strIngredient9,
      String? strIngredient10,
      String? strIngredient11,
      String? strIngredient12,
      String? strIngredient13,
      String? strIngredient14,
      String? strIngredient15,
      String? strIngredient16,
      String? strIngredient17,
      String? strIngredient18,
      String? strIngredient19,
      String? strIngredient20,
      required String strMeasure1,
      required String strMeasure2,
      required String strMeasure3,
      String? strMeasure4,
      String? strMeasure5,
      String? strMeasure6,
      String? strMeasure7,
      String? strMeasure8,
      String? strMeasure9,
      String? strMeasure10,
      String? strMeasure11,
      String? strMeasure12,
      String? strMeasure13,
      String? strMeasure14,
      String? strMeasure15,
      String? strMeasure16,
      String? strMeasure17,
      String? strMeasure18,
      String? strMeasure19,
      String? strMeasure20,
      String? strSource}) = _$_MealDetail;

  factory _MealDetail.fromJson(Map<String, dynamic> json) =
      _$_MealDetail.fromJson;

  @override
  String get idMeal;
  @override
  String get strMeal;
  @override
  String? get strDrinkAlternate;
  @override
  String get strCategory;
  @override
  String get strArea;
  @override
  String get strInstructions;
  @override
  String get strMealThumb;
  @override
  String? get strTags;
  @override
  String get strYoutube;
  @override
  String get strIngredient1;
  @override
  String get strIngredient2;
  @override
  String get strIngredient3;
  @override
  String? get strIngredient4;
  @override
  String? get strIngredient5;
  @override
  String? get strIngredient6;
  @override
  String? get strIngredient7;
  @override
  String? get strIngredient8;
  @override
  String? get strIngredient9;
  @override
  String? get strIngredient10;
  @override
  String? get strIngredient11;
  @override
  String? get strIngredient12;
  @override
  String? get strIngredient13;
  @override
  String? get strIngredient14;
  @override
  String? get strIngredient15;
  @override
  String? get strIngredient16;
  @override
  String? get strIngredient17;
  @override
  String? get strIngredient18;
  @override
  String? get strIngredient19;
  @override
  String? get strIngredient20;
  @override
  String get strMeasure1;
  @override
  String get strMeasure2;
  @override
  String get strMeasure3;
  @override
  String? get strMeasure4;
  @override
  String? get strMeasure5;
  @override
  String? get strMeasure6;
  @override
  String? get strMeasure7;
  @override
  String? get strMeasure8;
  @override
  String? get strMeasure9;
  @override
  String? get strMeasure10;
  @override
  String? get strMeasure11;
  @override
  String? get strMeasure12;
  @override
  String? get strMeasure13;
  @override
  String? get strMeasure14;
  @override
  String? get strMeasure15;
  @override
  String? get strMeasure16;
  @override
  String? get strMeasure17;
  @override
  String? get strMeasure18;
  @override
  String? get strMeasure19;
  @override
  String? get strMeasure20;
  @override
  String? get strSource;
  @override
  @JsonKey(ignore: true)
  _$MealDetailCopyWith<_MealDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
