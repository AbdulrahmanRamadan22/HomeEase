



// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'subcategorie_model.g.dart';


@JsonSerializable()
class SubCategorieModel {
  final String categorieName;
  final String urlImage;
  final String id;
  final String? description;



   SubCategorieModel({required this.categorieName, required this.urlImage,required this.id,this.description});

   Map<String, dynamic> toJson()=>_$SubCategorieModelToJson(this);

   factory SubCategorieModel.fromJson(Map<String, dynamic> json) =>
      _$SubCategorieModelFromJson(json);


}