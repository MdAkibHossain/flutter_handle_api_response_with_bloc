// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataModel _$$_DataModelFromJson(Map<String, dynamic> json) => _$_DataModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      worth: json['worth'] as String?,
      thumbnail: json['thumbnail'] as String?,
      image: json['image'] as String,
      description: json['description'] as String?,
      instructions: json['instructions'] as String?,
      open_giveaway_url: json['open_giveaway_url'] as String?,
      published_data: json['published_data'] as String?,
      type: json['type'] as String?,
      platforms: json['platforms'] as String?,
      end_data: json['end_data'] as String?,
      users: json['users'] as int?,
      status: json['status'] as String?,
      gamerpower_url: json['gamerpower_url'] as String?,
    );

Map<String, dynamic> _$$_DataModelToJson(_$_DataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'worth': instance.worth,
      'thumbnail': instance.thumbnail,
      'image': instance.image,
      'description': instance.description,
      'instructions': instance.instructions,
      'open_giveaway_url': instance.open_giveaway_url,
      'published_data': instance.published_data,
      'type': instance.type,
      'platforms': instance.platforms,
      'end_data': instance.end_data,
      'users': instance.users,
      'status': instance.status,
      'gamerpower_url': instance.gamerpower_url,
    };
