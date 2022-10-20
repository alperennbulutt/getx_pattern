import 'package:get/get.dart';
import 'package:getx_pattern/src/bindings/details_binding.dart';
import 'package:getx_pattern/src/bindings/home_binding.dart';
import 'package:getx_pattern/src/ui/details/details_page.dart';
import 'package:getx_pattern/src/ui/home/home_page.dart';
import 'package:getx_pattern/src/ui/second_page/second_page.dart';

part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.INITIAL, page: () => HomePage(), binding: HomeBinding()),
    // Details Page
    GetPage(
        name: Routes.DETAILS,
        page: () => DetailsPage(),
        binding: DetailsBinding()),

    // Second Page
    GetPage(name: Routes.SECONDPAGE, page: () => SecondPage()),
  ];
}
