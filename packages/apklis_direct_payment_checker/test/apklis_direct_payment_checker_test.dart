import 'package:apklis_direct_payment_checker/apklis_direct_payment_checker.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const MethodChannel channel = MethodChannel('apklis_direct_payment_checker');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return {
        'paid': false,
        'username': 'example',
      };
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('isPurchased', () async {
    const packageId = 'com.example.nova.prosalud';
    final status = await ApklisDirectPaymentChecker.isPurchased(packageId);
    expect(status.paid, false);
    expect(status.username, 'example');
  });
}
