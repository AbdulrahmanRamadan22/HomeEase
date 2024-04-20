// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'user_request_body.g.dart';

@JsonSerializable()
class UserRequestBody {
  String fullName;
  String phone;
  String email;

  String? profilePhotoURL;

  String type;
  String uId;

  UserRequestBody(
      {required this.fullName,
      required this.type,
      required this.uId,
      required this.phone,
      this.profilePhotoURL,
      required this.email,
      });

  Map<String, dynamic> toJson() => _$UserRequestBodyToJson(this);
}
