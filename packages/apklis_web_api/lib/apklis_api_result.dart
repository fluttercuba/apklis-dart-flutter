import 'package:apklis_web_api/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'apklis_api_result.freezed.dart';

@freezed
class ApklisApiResult with _$ApklisApiResult {
  const factory ApklisApiResult.success(ApklisModel result) =
      _SuccessApklisApiResult;
  const factory ApklisApiResult.failure(String error) = _FailureApklisApiResult;
}
