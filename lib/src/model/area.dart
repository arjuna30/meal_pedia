import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'area.freezed.dart';
part 'area.g.dart';

@freezed
class Area with _$Area {
  const factory Area({required String strArea}) = _Area;

  factory Area.fromJson(Map<String, dynamic> json) => _$AreaFromJson(json);
}
