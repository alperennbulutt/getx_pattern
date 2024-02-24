import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/src/data/repository/api_helper.dart';

class CustomErrorAlertDialog extends StatelessWidget {
  CustomErrorAlertDialog(
      {super.key, required this.method, required this.url, this.body});

  final String method;
  final String url;
  final Map<String, dynamic>? body;

  final sendRequest = ApiHelper().sendRequest;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: const SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text('Malesef işleminizi şuan gerçekleştiremiyoruz.'),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () async {
            Get.back();

            sendRequest(method, url, body);

            print('pressed');
          },

          // callbackFunction,
          child: const Text('Kapat'),
        ),
      ],
    );
  }
}
