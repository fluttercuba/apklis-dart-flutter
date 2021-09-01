import 'dart:convert';

import 'package:apklis_web_api/apklis_api_result.dart';
import 'package:apklis_web_api/apklis_web_api.dart';
import 'package:apklis_web_api/models/apklis_model.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'utils.dart';

class MockApklisWebApi extends Mock implements ApklisWebApi {}

void main() {
  test('check build uri', () {
    final apps = ['com.example.app1', 'com.example.app2'];
    final queryString = apps.map((e) => 'package_name=$e').join('&');
    final url = '${ApklisWebApi.API_URL}/v2/application?$queryString';
    final uri = ApklisWebApi.buildUri(apps);
    expect(uri.toString(), url);
  });

  test('check parser', () async {
    final api = MockApklisWebApi();
    final file = await getProjectFile('assets/response_example.json');
    final text = await file.readAsString();
    expect(text, isNotEmpty);
    final resp = jsonDecode(text) as Map<String, dynamic>;
    when(() => api.get(['club.postdata.covid19cuba'])).thenAnswer(
      (_) => Future.value(ApklisApiResult.success(ApklisModel.fromJson(resp))),
    );
    final model = await api.get(['club.postdata.covid19cuba']);
    model.when(
      success: (result) {
        expect(result.results.isNotEmpty, true);
        expect(result.toJson(), resp);
      },
      failure: (error) {
        throw Exception('Result should be success.');
      },
    );
  });
}
