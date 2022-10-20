import 'package:get/get.dart';
import 'package:getx_pattern/src/controller/home/home_controller.dart';
import 'package:getx_pattern/src/data/provider/api.dart';
import 'package:getx_pattern/src/data/repository/posts_repository.dart';
import 'package:http/http.dart' as http;

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() {
      return HomeController(
          repository:
              MyRepository(apiClient: MyApiClient(httpClient: http.Client())));
    });
  }
}
