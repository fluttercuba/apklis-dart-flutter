import 'package:apklis_http_web_api/apklis_http_web_api.dart';
import 'package:apklis_web_api/apklis_web_api.dart';
import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'utils.dart';

class MockHttpClient extends Mock implements BaseClient {}

void main() {
  test('check request success', () async {
    final apps = ['club.postdata.covid19cuba'];
    final httpClient = MockHttpClient();
    final api = ApklisHttpWebApi(httpClient);
    final uri = ApklisWebApi.buildUri(apps);
    final file = await getProjectFile('assets/response_example.json');
    final text = await file.readAsString();
    expect(text, isNotEmpty);
    when(() => httpClient.get(uri)).thenAnswer(
      (_) => Future.value(Response(text, 200)),
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
    final httpClient = MockHttpClient();
    final api = ApklisHttpWebApi(httpClient);
    final uri = ApklisWebApi.buildUri(apps);
    when(() => httpClient.get(uri)).thenAnswer(
      (_) => Future.value(Response('', 400, reasonPhrase: 'Invalid request')),
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
