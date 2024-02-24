import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:get/get.dart';
import 'package:getx_pattern/src/ui/widgets/error/custom_error_dialog.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  late http.Client httpClient;

//
  var headers = {
    'accept': 'application/json',
    'Content-Type': 'application/json;',
  };

//
  Future<String?> sendRequest(
      String method, String url, Map<String, dynamic>? body) async {
    final request = http.Request(method, Uri.parse(url))
      ..body = jsonEncode(body)
      ..headers.addAll(headers);

    try {
      final response =
          await request.send().timeout(const Duration(seconds: 15));

      return _handleResponse(await http.Response.fromStream(response));
    } on TimeoutException catch (e) {
      _handleError(e, method, url, body);
    } on SocketException catch (e) {
      _handleError(e, method, url, body);
    } on Exception catch (e) {
      _handleError(e, method, url, body);
    }

    return null;
  }

//
  _handleResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
      case 400:
      case 401:
      case 409:
      case 429:
      case 500:
        return response.body;
      default:
        return null;
    }
  }

//
  Future<void> _handleError(
    dynamic error,
    String method,
    String url,
    Map<String, dynamic>? body,
  ) async {
    log(error.toString());
    await Get.dialog(
      barrierDismissible: false,
      CustomErrorAlertDialog(
        method: method,
        url: url,
        body: body,
      ),
    );
  }
}
