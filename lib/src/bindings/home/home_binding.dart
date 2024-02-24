import 'package:get/get.dart';
import 'package:getx_pattern/src/controller/home/home_controller.dart';
import 'package:getx_pattern/src/data/repository/api.dart';
import 'package:getx_pattern/src/data/repository/repository.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
        () => HomeController(repository: Repository(apiClient: ApiClient())));
  }
}
