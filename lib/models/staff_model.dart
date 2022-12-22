import 'package:freezed_annotation/freezed_annotation.dart';

part 'staff_model.freezed.dart';

part 'staff_model.g.dart';

@freezed
class Staff with _$Staff {
  factory Staff({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'bio') required String bio,
    @JsonKey(name: 'avatar') required String avatar,
  }) = _Staff;

  factory Staff.fromJson(Map<String, dynamic> json) =>
      _$StaffFromJson(json);
}