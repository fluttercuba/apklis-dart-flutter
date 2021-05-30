<h1 align="center">Apklis Direct Payment Checker</h1>

<p align="center">
    <a href="https://opensource.org/licenses/MIT" target="_blank">
        <img src="https://img.shields.io/badge/License-MIT-green.svg?label=license" alt="License: MIT"/>
    </a>
    <a href="https://github.com/fluttercuba/apklis-dart-flutter/actions/workflows/test.yml" target="_blank">
        <img src="https://github.com/fluttercuba/apklis-dart-flutter/actions/workflows/test.yml/badge.svg" alt="Test"/>
    </a>
    <a href="https://pub.dev/packages/apklis_direct_payment_checker" target="_blank">
        <img src="https://img.shields.io/pub/v/apklis_direct_payment_checker" alt="Version"/>
    </a>
    <a href="https://github.com/invertase/melos" target="_blank">
        <img src="https://img.shields.io/badge/maintained%20with-melos-f700ff.svg?style=flat-square" alt="Melos"/>
    </a>
    <a href="https://pub.dev/packages/lint" target="_blank">
        <img src="https://img.shields.io/badge/style-lint-4BC0F5.svg" alt="Lint">
    </a>
</p>

<p align="center">
    <a href="https://github.com/fluttercuba/apklis-dart-flutter/commits" target="_blank">
        <img src="https://img.shields.io/github/last-commit/fluttercuba/apklis-dart-flutter.svg?style=flat" alt="Last commit"/>
    </a>
    <a href="https://github.com/fluttercuba/apklis-dart-flutter/commits" target="_blank">
        <img src="https://img.shields.io/github/commit-activity/m/fluttercuba/apklis-dart-flutter" alt="GitHub commit activity"/>
    </a>
    <a href="https://github.com/fluttercuba/apklis-dart-flutter/stargazers" target="_blank">
        <img src="https://img.shields.io/github/stars/fluttercuba/apklis-dart-flutter?style=flat&logo=github" alt="Github Stars"/>
    </a>
    <a href="https://github.com/fluttercuba/apklis-dart-flutter/network/members" target="_blank">
        <img src="https://img.shields.io/github/forks/fluttercuba/apklis-dart-flutter?style=flat&logo=github" alt="Github Forks"/>
    </a>
    <a href="https://github.com/fluttercuba/apklis-dart-flutter" target="_blank">
        <img src="https://img.shields.io/github/watchers/fluttercuba/apklis-dart-flutter?style=flat&logo=github" alt="Github Watchers"/>
    </a>
    <a href="https://github.com/fluttercuba/apklis-dart-flutter/graphs/contributors" target="_blank">
        <img src="https://img.shields.io/github/contributors/fluttercuba/apklis-dart-flutter" alt="GitHub contributors"/>
    </a>
</p>

---

Paquete de [Flutter](https://flutter.dev) para el chequeo de pagos de [Apklis](https://apklis.cu).

Basado en el repositorio para Kotlin y Java [github.com/Z17-CU/apklischeckpayment](https://github.com/Z17-CU/apklischeckpayment).

Disponible en [pub.dev](https://pub.dev): [apklis_direct_payment_checker](https://pub.dev/packages/apklis_direct_payment_checker).

## Uso

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
