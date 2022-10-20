import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

// ignore: must_be_immutable
class SecondPage extends StatelessWidget {
  SecondPage({Key? key}) : super(key: key);

  var count = 0.obs;
  var title = "Second Pageeee".obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page Title"),
      ),
      body: Column(
        children: [
          Text(title.toString()),
        ],
      ),
    );
  }
}
