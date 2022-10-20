import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/src/data/model/model.dart';
import 'package:getx_pattern/src/data/repository/posts_repository.dart';

class DetailsController extends GetxController {
  final MyRepository repository;
  DetailsController({required this.repository});

  final _post = MyModel().obs;
  get post => _post.value;
  set post(value) => _post.value = value;

  editar(post) {
    debugPrint('editar');
  }

  delete(id) {
    debugPrint('deletar');
  }
}
