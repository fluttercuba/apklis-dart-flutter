<h1 align="center">Apklis Direct Payment Checker</h1>

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg?label=license)](https://opensource.org/licenses/MIT)
[![Version](https://img.shields.io/pub/v/apklis_direct_payment_checker)](https://pub.dev/packages/apklis_direct_payment_checker)
[![codecov](https://codecov.io/gh/fluttercuba/apklis-dart-flutter/branch/main/graph/badge.svg?token=RTBS8EX4GQ)](https://codecov.io/gh/fluttercuba/apklis-dart-flutter)
[![Test](https://github.com/fluttercuba/apklis-dart-flutter/actions/workflows/test.yml/badge.svg)](https://github.com/fluttercuba/apklis-dart-flutter/actions/workflows/test.yml)
[![Melos](https://img.shields.io/badge/maintained%20with-melos-f700ff.svg?style=flat-square)](https://github.com/invertase/melos) [![Lint](https://img.shields.io/badge/style-lint-4BC0F.svg)](https://pub.dev/packages/lint)
[![Last commit](https://img.shields.io/github/last-commit/fluttercuba/apklis-dart-flutter.svg?style=flat)](https://github.com/fluttercuba/apklis-dart-flutter/commits)
[![GitHub commit activity](https://img.shields.io/github/commit-activity/m/fluttercuba/apklis-dart-flutter)](https://github.com/fluttercuba/apklis-dart-flutter/commits)
[![Github Stars](https://img.shields.io/github/stars/fluttercuba/apklis-dart-flutter?style=flat&logo=github)](https://github.com/fluttercuba/apklis-dart-flutter/stargazers)
[![Github Forks](https://img.shields.io/github/forks/fluttercuba/apklis-dart-flutter?style=flat&logo=github)](https://github.com/fluttercuba/apklis-dart-flutter/network/members)
[![Github Watchers](https://img.shields.io/github/watchers/fluttercuba/apklis-dart-flutter?style=flat&logo=github)](https://github.com/fluttercuba/apklis-dart-flutter)
[![GitHub contributors](https://img.shields.io/github/contributors/fluttercuba/apklis-dart-flutter?label=code%20contributors)](https://github.com/fluttercuba/apklis-dart-flutter/graphs/contributors)

---

Paquete de [Flutter](https://flutter.dev) para el chequeo de pagos de [Apklis](https://apklis.cu).

Basado en el repositorio para Kotlin y Java [github.com/Z17-CU/apklischeckpayment](https://github.com/Z17-CU/apklischeckpayment).

Disponible en [pub.dev](https://pub.dev): [apklis_direct_payment_checker](https://pub.dev/packages/apklis_direct_payment_checker).

## Ejemplo de uso

```dart
var status = await ApklisDirectPaymentChecker.isPurchased();
print(status.paid);
print(status.username);
```

Si se desea usar un nombre de paquete diferente al de la aplicación el método `isPurchased` puede recibirlo como parámetro:

```dart
final packageId = 'com.example.nova.prosalud';
var status = await ApklisDirectPaymentChecker.isPurchased(packageId);
print(status.paid);
print(status.username);
```

Ejemplo completo disponible en: <https://pub.dev/packages/apklis_direct_payment_checker/example>
