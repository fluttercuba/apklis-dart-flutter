import 'package:apklis_direct_payment_checker/apklis_direct_payment_checker.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:package_info_plus/package_info_plus.dart';

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
    PackageInfo.disablePackageInfoPlatformOverride = true;
    PackageInfo.setMockInitialValues(
      appName: 'App Example',
      packageName: 'com.example.nova.prosalud',
      version: '0.0.1',
      buildNumber: '1',
      buildSignature: '',
    );
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
    PackageInfo.disablePackageInfoPlatformOverride = false;
  });

  test('isPurchased with packageId', () async {
    const packageId = 'com.example.nova.prosalud';
    final status = await ApklisDirectPaymentChecker.isPurchased(packageId);
    expect(status.paid, false);
    expect(status.username, 'example');
  });

  test('isPurchased without packageId', () async {
    final status = await ApklisDirectPaymentChecker.isPurchased();
    expect(status.paid, false);
    expect(status.username, 'example');
  });
}
