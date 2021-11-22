// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
class _$CategoryTearOff {
  const _$CategoryTearOff();

  _Category call(
      {String idCategory = '',
      required String strCategory,
      String strCategoryThumb = '',
      String strCategoryDescription = ''}) {
    return _Category(
      idCategory: idCategory,
      strCategory: strCategory,
      strCategoryThumb: strCategoryThumb,
      strCategoryDescription: strCategoryDescription,
    );
  }

  Category fromJson(Map<String, Object?> json) {
    return Category.fromJson(json);
  }
}

/// @nodoc
const $Category = _$CategoryTearOff();

/// @nodoc
mixin _$Category {
  String get idCategory => throw _privateConstructorUsedError;
  String get strCategory => throw _privateConstructorUsedError;
  String get strCategoryThumb => throw _privateConstructorUsedError;
  String get strCategoryDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res>;
  $Res call(
      {String idCategory,
      String strCategory,
      String strCategoryThumb,
      String strCategoryDescription});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res> implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  final Category _value;
  // ignore: unused_field
  final $Res Function(Category) _then;

  @override
  $Res call({
    Object? idCategory = freezed,
    Object? strCategory = freezed,
    Object? strCategoryThumb = freezed,
    Object? strCategoryDescription = freezed,
  }) {
    return _then(_value.copyWith(
      idCategory: idCategory == freezed
          ? _value.idCategory
          : idCategory // ignore: cast_nullable_to_non_nullable
              as String,
      strCategory: strCategory == freezed
          ? _value.strCategory
          : strCategory // ignore: cast_nullable_to_non_nullable
              as String,
      strCategoryThumb: strCategoryThumb == freezed
          ? _value.strCategoryThumb
          : strCategoryThumb // ignore: cast_nullable_to_non_nullable
              as String,
      strCategoryDescription: strCategoryDescription == freezed
          ? _value.strCategoryDescription
          : strCategoryDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) then) =
      __$CategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String idCategory,
      String strCategory,
      String strCategoryThumb,
      String strCategoryDescription});
}

/// @nodoc
class __$CategoryCopyWithImpl<$Res> extends _$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(_Category _value, $Res Function(_Category) _then)
      : super(_value, (v) => _then(v as _Category));

  @override
  _Category get _value => super._value as _Category;

  @override
  $Res call({
    Object? idCategory = freezed,
    Object? strCategory = freezed,
    Object? strCategoryThumb = freezed,
    Object? strCategoryDescription = freezed,
  }) {
    return _then(_Category(
      idCategory: idCategory == freezed
          ? _value.idCategory
          : idCategory // ignore: cast_nullable_to_non_nullable
              as String,
      strCategory: strCategory == freezed
          ? _value.strCategory
          : strCategory // ignore: cast_nullable_to_non_nullable
              as String,
      strCategoryThumb: strCategoryThumb == freezed
          ? _value.strCategoryThumb
          : strCategoryThumb // ignore: cast_nullable_to_non_nullable
              as String,
      strCategoryDescription: strCategoryDescription == freezed
          ? _value.strCategoryDescription
          : strCategoryDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Category implements _Category {
  const _$_Category(
      {this.idCategory = '',
      required this.strCategory,
      this.strCategoryThumb = '',
      this.strCategoryDescription = ''});

  factory _$_Category.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String idCategory;
  @override
  final String strCategory;
  @JsonKey(defaultValue: '')
  @override
  final String strCategoryThumb;
  @JsonKey(defaultValue: '')
  @override
  final String strCategoryDescription;

  @override
  String toString() {
    return 'Category(idCategory: $idCategory, strCategory: $strCategory, strCategoryThumb: $strCategoryThumb, strCategoryDescription: $strCategoryDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Category &&
            (identical(other.idCategory, idCategory) ||
                other.idCategory == idCategory) &&
            (identical(other.strCategory, strCategory) ||
                other.strCategory == strCategory) &&
            (identical(other.strCategoryThumb, strCategoryThumb) ||
                other.strCategoryThumb == strCategoryThumb) &&
            (identical(other.strCategoryDescription, strCategoryDescription) ||
                other.strCategoryDescription == strCategoryDescription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idCategory, strCategory,
      strCategoryThumb, strCategoryDescription);

  @JsonKey(ignore: true)
  @override
  _$CategoryCopyWith<_Category> get copyWith =>
      __$CategoryCopyWithImpl<_Category>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryToJson(this);
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {String idCategory,
      required String strCategory,
      String strCategoryThumb,
      String strCategoryDescription}) = _$_Category;

  factory _Category.fromJson(Map<String, dynamic> json) = _$_Category.fromJson;

  @override
  String get idCategory;
  @override
  String get strCategory;
  @override
  String get strCategoryThumb;
  @override
  String get strCategoryDescription;
  @override
  @JsonKey(ignore: true)
  _$CategoryCopyWith<_Category> get copyWith =>
      throw _privateConstructorUsedError;
}
