import 'dart:async';

import 'package:apklis_direct_payment_checker/apklis_direct_payment_status.dart';
import 'package:flutter/services.dart';
import 'package:package_info_plus/package_info_plus.dart';

/// La clase ApklisDirectPaymentChecker registra las funcionalidades de Apklis.
///
/// Registra la función para comprobar si esta pagado o no.
class ApklisDirectPaymentChecker {
  /// Establece la comunicacion entre codigo de Kotlin/Android y Flutter/Dart.
  static const channel = MethodChannel('apklis_direct_payment_checker');

  /// Devuelve `Future<ApklisDirectPaymentStatus>` con la información del estado de pago.
  static Future<ApklisDirectPaymentStatus> isPurchased([
    String? packageId,
  ]) async {
    final id = packageId ?? (await PackageInfo.fromPlatform()).packageName;
    final Map? map = await channel.invokeMapMethod('isPurchased', id);
    if (map == null) {
      return const ApklisDirectPaymentStatus(paid: false, username: null);
    }
    return ApklisDirectPaymentStatus(
      paid: map['paid'] as bool,
      username: map['username'] as String?,
    );
  }
}
