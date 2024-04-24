// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categorie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuperCategorieModel _$SuperCategorieModelFromJson(Map<String, dynamic> json) =>
    SuperCategorieModel(
      categorieName: json['categorieName'] as String,
      urlImage: json['urlImage'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$SuperCategorieModelToJson(
        SuperCategorieModel instance) =>
    <String, dynamic>{
      'categorieName': instance.categorieName,
      'urlImage': instance.urlImage,
      'id': instance.id,
    };
