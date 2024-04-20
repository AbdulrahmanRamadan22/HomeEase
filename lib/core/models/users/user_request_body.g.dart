// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRequestBody _$UserRequestBodyFromJson(Map<String, dynamic> json) =>
    UserRequestBody(
      fullName: json['fullName'] as String,
      type: json['type'] as String,
      uId: json['uId'] as String,
      phone: json['phone'] as String,
      profilePhotoURL: json['profilePhotoURL'] as String?,
      email: json['email'] as String,
    );

Map<String, dynamic> _$UserRequestBodyToJson(UserRequestBody instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'phone': instance.phone,
      'email': instance.email,
      'profilePhotoURL': instance.profilePhotoURL,
      'type': instance.type,
      'uId': instance.uId,
    };
