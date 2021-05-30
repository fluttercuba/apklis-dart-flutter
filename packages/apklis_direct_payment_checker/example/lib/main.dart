import 'dart:async';
import 'dart:developer';

import 'package:apklis_direct_payment_checker/apklis_direct_payment_checker.dart';
import 'package:apklis_direct_payment_checker/apklis_direct_payment_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatefulWidget {
  const ExampleApp({Key? key}) : super(key: key);

  @override
  ExampleAppState createState() => ExampleAppState();
}

class ExampleAppState extends State<ExampleApp> {
  final keyForm = GlobalKey<FormState>();
  final controller = TextEditingController();
  ApklisDirectPaymentStatus? status;

  Future<void> requestPaymentStatus(String packageId) async {
    try {
      final status = await ApklisDirectPaymentChecker.isPurchased(packageId);
      setState(() => this.status = status);
    } on PlatformException catch (e) {
      log(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Apklis Direct Payment Checker'),
        ),
        body: Form(
          key: keyForm,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: controller,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          labelText: 'Package Id',
                          hintText: 'com.example.nova.prosalud',
                        ),
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Is required';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              if (status != null)
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5),
                      child: const Text('Username registered in Apklis:'),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      child: Text(
                        status!.username ?? 'Unknow',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      child: const Text('App payment status:'),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      child: Text(
                        status!.paid.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (keyForm.currentState!.validate()) {
              final packageId = controller.text.trim();
              requestPaymentStatus(packageId);
            }
          },
          child: const Icon(Icons.search),
        ),
      ),
    );
  }
}
