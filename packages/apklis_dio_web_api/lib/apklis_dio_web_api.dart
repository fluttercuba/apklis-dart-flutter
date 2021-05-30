library apklis_dio_web_api;

import 'package:apklis_web_api/apklis_api_result.dart';
import 'package:apklis_web_api/apklis_web_api.dart';
import 'package:apklis_web_api/models/models.dart';
import 'package:dio/dio.dart';

class ApklisDioWebApi extends ApklisWebApi {
  final Dio dioClient;

  ApklisDioWebApi(this.dioClient);

  @override
  Future<ApklisApiResult> getByUri(Uri uri) async {
    try {
      final response = await dioClient.getUri(uri);
      if (response.statusCode == 200) {
        final json = response.data as Map<String, dynamic>;
        final model = ApklisModel.fromJson(json);
        return ApklisApiResult.success(model);
      } else {
        return ApklisApiResult.failure(response.statusMessage!);
      }
    } catch (e) {
      return ApklisApiResult.failure(e.toString());
    }
  }
}
