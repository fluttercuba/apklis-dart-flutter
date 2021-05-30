import 'dart:convert';

import 'package:apklis_dio_web_api/apklis_dio_web_api.dart';
import 'package:apklis_web_api/apklis_web_api.dart';
import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'utils.dart';

class MockDio extends Mock implements Dio {}

void main() {
  test('check request success', () async {
    final apps = ['club.postdata.covid19cuba'];
    final dio = MockDio();
    final api = ApklisDioWebApi(dio);
    final uri = ApklisWebApi.buildUri(apps);
    final file = await getProjectFile('assets/response_example.json');
    final text = await file.readAsString();
    expect(text, isNotEmpty);
    final resp = jsonDecode(text) as Map<String, dynamic>;
    when(() => dio.getUri(uri)).thenAnswer(
      (_) => Future.value(
        Response(
          requestOptions: RequestOptions(
            path: uri.path,
            baseUrl: uri.origin,
            method: 'GET',
          ),
          statusCode: 200,
          data: resp,
        ),
      ),
    );
    final model = await api.get(['club.postdata.covid19cuba']);
    model.when(
      success: (result) {
        expect(result.results.isNotEmpty, true);
      },
      failure: (error) {
        throw Exception('Result should be success. Error: $error');
      },
    );
  });

  test('check request failure', () async {
    final apps = ['club.postdata.covid19cuba'];
    final dio = MockDio();
    final api = ApklisDioWebApi(dio);
    final uri = ApklisWebApi.buildUri(apps);
    when(() => dio.getUri(uri)).thenAnswer(
      (_) => Future.value(
        Response(
          requestOptions: RequestOptions(
            path: uri.path,
            baseUrl: uri.origin,
            method: 'GET',
          ),
          statusCode: 400,
          statusMessage: 'Invalid request',
        ),
      ),
    );
    final model = await api.get(['club.postdata.covid19cuba']);
    model.when(
      success: (result) {
        throw Exception('Result should be failure.');
      },
      failure: (error) {
        expect(error.isNotEmpty, true);
      },
    );
  });
}
