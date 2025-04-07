import 'dart:convert';

import 'package:get/get.dart';

class RestClient extends GetConnect {
  final String _backendBaseUrl = 'https://api-objetivo.crmsolucoes.net';
  RestClient() {
    baseUrl = _backendBaseUrl;
  }

  @override
  void onInit() {
    defaultContentType = 'application/pdf;base64';
    defaultDecoder = decoder;
    allowAutoSignedCert = true;
    super.onInit();
    httpClient.baseUrl = _backendBaseUrl;
    httpClient.timeout = const Duration(seconds: 30);
    // httpClient.defaultContentType = "application/x-binary";
    httpClient.defaultContentType = "application/pdf;base64";
    httpClient.defaultDecoder = decoder;
    // httpClient.defaultContentType = "application/json";
    // httpClient.addResponseModifier((request, response) async {
    //   print('response.body ====== ${response.body}');
    // });
  }

  dynamic decoder(str) {
    return base64.decode(str);
  }
}

class RestClientException implements Exception {
  final int? code;
  final String message;
  RestClientException(
    this.message, {
    this.code,
  });

  @override
  String toString() => 'RestClientException(code: $code, message: $message)';
}
