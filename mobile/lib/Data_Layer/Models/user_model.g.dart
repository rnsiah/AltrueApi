// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserFromAPI _$UserFromAPIFromJson(Map<String, dynamic> json) {
  return UserFromAPI(
    email: json['email'] as String,
    url: json['url'] as String,
    firstname: json['first_name'] as String,
    id: json['id'] as int,
    lastName: json['last_name'] as String,
    profile: json['profile'] as String,
    profileCreated: json['profile_created'] as bool,
    userName: json['username'] as String,
  );
}

Map<String, dynamic> _$UserFromAPIToJson(UserFromAPI instance) =>
    <String, dynamic>{
      'url': instance.url,
      'email': instance.email,
      'first_name': instance.firstname,
      'last_name': instance.lastName,
      'username': instance.userName,
      'id': instance.id,
      'profile': instance.profile,
      'profile_created': instance.profileCreated,
    };

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    id: json['id'] as int,
    key: json['key'] as String,
    email: json['email'] as String,
    altid: json['altid'] as int,
    hasProfile: json['hasProfile'] as int,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'key': instance.key,
      'altid': instance.altid,
      'hasProfile': instance.hasProfile,
    };

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return Profile(
    username: json['username'] as String,
    user: UserFromAPI.fromJson(json['user'] as Map<String, dynamic>),
    title: json['title'] as String,
    dob: json['dob'] as String,
    address: json['address'] as String,
    country: json['country'] as String,
    city: json['city'] as String,
    zip: json['zip'] as String,
    qrCode: json['qr_code_img'] as String,
    shirtList: (json['shirt_list'] as List<dynamic>)
        .map((e) => Shirt.fromJson(e as Map<String, dynamic>))
        .toList(),
    atrocityList: (json['atrocity_list'] as List<dynamic>)
        .map((e) => Atrocity.fromJson(e as Map<String, dynamic>))
        .toList(),
    nonProfitList: (json['nonProfit_list'] as List<dynamic>)
        .map((e) => NonProfit.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'user': instance.user.toJson(),
      'username': instance.username,
      'title': instance.title,
      'dob': instance.dob,
      'address': instance.address,
      'country': instance.country,
      'city': instance.city,
      'zip': instance.zip,
      'qr_code_img': instance.qrCode,
      'shirt_list': instance.shirtList.map((e) => e.toJson()).toList(),
      'atrocity_list': instance.atrocityList.map((e) => e.toJson()).toList(),
      'nonProfit_list': instance.nonProfitList.map((e) => e.toJson()).toList(),
    };

ProfileCompletion _$ProfileCompletionFromJson(Map<String, dynamic> json) {
  return ProfileCompletion(
    username: json['username'] as String,
    title: json['title'] as String,
    dob: json['dob'] as String,
    address: json['address'] as String,
    city: json['city'] as String,
    country: json['country'] as String,
    zip: json['zip'] as String,
  );
}

Map<String, dynamic> _$ProfileCompletionToJson(ProfileCompletion instance) =>
    <String, dynamic>{
      'username': instance.username,
      'title': instance.title,
      'dob': instance.dob,
      'address': instance.address,
      'city': instance.city,
      'country': instance.country,
      'zip': instance.zip,
    };
