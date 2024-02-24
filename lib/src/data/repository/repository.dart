import 'package:getx_pattern/src/data/repository/api.dart';

class Repository {
  Repository({required this.apiClient});
  final ApiClient apiClient;

  deleteUserNotes(int bookId) {
    return apiClient.deleteUserNotes(bookId);
  }
}
