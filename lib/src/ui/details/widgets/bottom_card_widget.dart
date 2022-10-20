import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/src/controller/details/details_controller.dart';
import 'package:getx_pattern/src/ui/theme/app_text_theme.dart';

class CardBottomCustomWidget extends StatelessWidget {
  const CardBottomCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: GetX<DetailsController>(
                  builder: (_) => Text(
                        _.post.body,
                        style: cardTextStyle,
                      )),
            ),
          ),
        ],
      ),
    );
  }
}
