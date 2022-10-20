import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/src/controller/home/home_controller.dart';
import 'package:getx_pattern/src/data/model/photos_model.dart';
import 'package:getx_pattern/src/routes/app_pages.dart';
import 'package:getx_pattern/src/ui/widgets/loading_widget.dart';

// ignore: must_be_immutable
class HomePage extends GetView<HomeController> {
  HomePage({super.key});
  late PhotosModel photosModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Title"),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: GetX<HomeController>(initState: (state) {
          Get.find<HomeController>().getPhotos();
          // Get.find<HomeController>().getAll();
        }, builder: (_) {
          return _.photosList.length < 1
              ? LoadingWidget()
              : ListView.builder(
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => Get.toNamed(Routes.SECONDPAGE),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Image.network(_.photosList[index].url)
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Text(_.photosList[index].title)],
                            ),
                          ),
                        ],
                      ),
                    );

                    // ListTile(
                    //   title: Text(_.postList[index].title ?? 'a'),
                    //   subtitle: Text(_.postList[index].body ?? 'b'),
                    //   onTap: () => _.details(_.postList[index]),
                    // );
                  },
                  itemCount: _.photosList.length,
                );
        }),
      ),
    );
  }
}
