import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_model.freezed.dart';
part 'data_model.g.dart';

@freezed
class DataModel with _$DataModel {
  factory DataModel({
    required int? id,
    required String? title,
    required String? worth,
    required String? thumbnail,
    required String image,
    required String? description,
    required String? instructions,
    required String? open_giveaway_url,
    required String? published_data,
    required String? type,
    required String? platforms,
    required String? end_data,
    required int? users,
    required String? status,
    required String? gamerpower_url,
  }) = _DataModel;
  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
}
//  flutter pub run build_runner watch --delete-conflicting-outputs