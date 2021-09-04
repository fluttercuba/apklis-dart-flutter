library apklis_dio_web_api;

import 'package:apklis_web_api/apklis_api_result.dart';
import 'package:apklis_web_api/apklis_web_api.dart';
import 'package:apklis_web_api/models/apklis_error_model.dart';
import 'package:apklis_web_api/models/models.dart';
import 'package:dio/dio.dart';

class ApklisDioWebApi extends ApklisWebApi {
  ApklisDioWebApi(this.dioClient);

  final Dio dioClient;

  @override
  Future<ApklisApiResult> get(List<String> apps) async {
    try {
      final uri = ApklisWebApi.buildUri(apps);
      final response = await dioClient.getUri(uri);
      if (response.statusCode == 200) {
        final json = response.data as Map<String, dynamic>;
        final model = ApklisModel.fromJson(json);
        return ApklisApiResult.success(model);
      } else {
        return ApklisApiResult.failure(ApklisErrorModel(
          statusCode: response.statusCode!,
          statusMessage: response.statusMessage!,
        ));
      }
    } catch (e) {
      return ApklisApiResult.failure(ApklisErrorModel(
        statusCode: -1,
        statusMessage: e.toString(),
      ));
    }
  }
}
