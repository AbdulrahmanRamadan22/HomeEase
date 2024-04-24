// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subcategorie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubCategorieModel _$SubCategorieModelFromJson(Map<String, dynamic> json) =>
    SubCategorieModel(
      categorieName: json['categorieName'] as String,
      urlImage: json['urlImage'] as String,
      id: json['id'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$SubCategorieModelToJson(SubCategorieModel instance) =>
    <String, dynamic>{
      'categorieName': instance.categorieName,
      'urlImage': instance.urlImage,
      'id': instance.id,
      'description': instance.description,
    };
