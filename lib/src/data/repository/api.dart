import 'dart:async';
import 'package:getx_pattern/src/data/repository/api_helper.dart';

class ApiClient {
  final sendRequest = ApiHelper().sendRequest;

  Future<String?> deleteUserNotes(int bookId) async {
    // String url = '$domain$deleteNotesUrl?bookId=$bookId';
    final body = {
      "bookId": bookId,
    };
    //  return await sendRequest("DELETE", url, body);
  }
}
