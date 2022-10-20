import 'package:flutter/material.dart';
import 'package:flutter_slimy_card/flutter_slimy_card.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/src/controller/details/details_controller.dart';
import 'package:getx_pattern/src/controller/home/home_controller.dart';
import 'package:getx_pattern/src/ui/details/widgets/bottom_card_widget.dart';
import 'package:getx_pattern/src/ui/details/widgets/top_card_widget.dart';

class DetailsPage extends GetView<DetailsController> {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            width: 400,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(32),
            child: GetX<DetailsController>(
              builder: (_) {
                _.post = Get.find<HomeController>().post;
                return ListView(
                  children: <Widget>[
                    FlutterSlimyCard(
                      color: Colors.red,
                      cardWidth: 400,
                      topCardHeight: 150,
                      bottomCardHeight: 300,
                      borderRadius: 15,
                      topCardWidget: const CardTopCustomWidget(),
                      bottomCardWidget: const CardBottomCustomWidget(),
                      slimeEnabled: true,
                    ),
                  ],
                );
              },
            )),
      ),
    );
  }
}
