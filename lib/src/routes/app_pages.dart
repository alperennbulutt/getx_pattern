import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getx_pattern/src/bindings/home/home_binding.dart';
import 'package:getx_pattern/src/ui/pages/home/home_page.dart';

part './app_routes.dart';

class AppPages {
  static final pages = [
    // Home Page
    GetPage(
        name: Routes.INITIAL,
        page: () => const HomePage(),
        binding: HomeBinding()),
  ];
}
