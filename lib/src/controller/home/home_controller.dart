// ignore_for_file: invalid_use_of_protected_member

import 'package:get/get.dart';
import 'package:getx_pattern/src/data/model/model.dart';
import 'package:getx_pattern/src/data/model/photos_model.dart';

import 'package:getx_pattern/src/data/repository/posts_repository.dart';
import 'package:getx_pattern/src/routes/app_pages.dart';

class HomeController extends GetxController {
  final MyRepository repository;
  HomeController({required this.repository});

// photos -----------------------------------------------------------
  final _photosList = <PhotosModel>[].obs;
  get photosList => _photosList.value;
  set photosList(value) => _photosList.value = value;

  final _photosModel = PhotosModel().obs;
  get postPhotos => _photosModel.value;
  set postPhotos(value) => _photosModel.value = value;

// -----------------------------------------------------------------

// postModel --------------------------------------------------------
  // ignore: deprecated_member_use
  final _postsList = <MyModel>[].obs;
  get postList => _postsList.value;
  set postList(value) => _postsList.value = value;

  final _post = MyModel().obs;
  get post => _post.value;
  set post(value) => _post.value = value;

  // ---------------------------------------------------------------

  getAll() {
    repository.getAll().then((data) {
      postList = data;
    });
  }

  getPhotos() {
    repository.getPhotos().then((data) {
      photosList = data;
    });
  }

  // route second page
  goToSecondPage() {
    Get.toNamed(Routes.SECONDPAGE);
  }

  details(post) {
    this.post = post;
    Get.toNamed(Routes.DETAILS);
  }
}
