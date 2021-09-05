<h1 align="center">Apklis Web API</h1>

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg?label=license)](https://opensource.org/licenses/MIT)
[![Version](https://img.shields.io/pub/v/apklis_web_api)](https://pub.dev/packages/apklis_web_api)
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

Interfaz para la posterior implementación de un paquete en [Dart](https://dart.dev) para interactuar con la API de [Apklis](https://apklis.cu). El resto de paquetes del [ecosistema de Apklis Dart/Flutter](https://github.com/fluttercuba/apklis-dart-flutter) utilizará este paquete como un contrato en el que mediante inyección de dependencias se inyectarian las implementaciones concretas.

Este paquete no se utiliza directamente, su proposito es servir de implementación abstracta base para que otros paquetes tengan la implementación concreta utilizando el cliente HTTP deseado.

## Implementaciones concretas

- [apklis_http_web_api](https://pub.dev/packages/apklis_http_web_api) que utiliza el cliente HTTP implementado en el paquete [http](https://pub.dev/packages/http)
- [apklis_dio_web_api](https://pub.dev/packages/apklis_dio_web_api) que utiliza el cliente HTTP implementado en el paquete [dio](https://pub.dev/packages/dio)

Para ver como se utiliza una implementación concreta revise su documentación especifica.

Para crear una implementación concreta debe heredar de la clase abstracta `ApklisWebApi` e implementar el método `Future<ApklisApiResult> get(List<String> apps)` utilizando internamente el método estático `static Uri buildUri(List<String> apps)` y los modelos que se encuentran en la carpeta `lib/models`.

PD: Si usted crea una implementación concreta y la publica en [pub.dev](https://pub.dev) le invitamos a realizar un **Pull Request** y un **Issue** para agregarla a la lista.
