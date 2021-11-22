// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ingredient _$$_IngredientFromJson(Map<String, dynamic> json) =>
    _$_Ingredient(
      idIngredient: json['idIngredient'] as String,
      strIngredient: json['strIngredient'] as String,
      strDescription: json['strDescription'] as String?,
      strType: json['strType'] as String?,
    );

Map<String, dynamic> _$$_IngredientToJson(_$_Ingredient instance) =>
    <String, dynamic>{
      'idIngredient': instance.idIngredient,
      'strIngredient': instance.strIngredient,
      'strDescription': instance.strDescription,
      'strType': instance.strType,
    };
