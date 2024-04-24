



// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'categorie_model.g.dart';


@JsonSerializable()
class SuperCategorieModel {
  final String categorieName;
 final String urlImage;
final String id;



  SuperCategorieModel({required this.categorieName, required this.urlImage,required this.id});

   Map<String, dynamic> toJson()=>_$SuperCategorieModelToJson(this);

   factory SuperCategorieModel.fromJson(Map<String, dynamic> json,) =>
      _$SuperCategorieModelFromJson(json);


}