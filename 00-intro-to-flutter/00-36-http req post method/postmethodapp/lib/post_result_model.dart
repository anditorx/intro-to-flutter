import 'package:http/http.dart' as http;
import 'dart:convert'; // Tambahkan import ini

class PostResult {
  final String id; // Tambahkan 'final' dan non-nullable
  final String name;
  final String job;
  final String created;

  PostResult(
      {required this.id,
      required this.name,
      required this.job,
      required this.created}); // Tambahkan 'required' pada 'id'

  factory PostResult.createPostResult(Map<String, dynamic> object) {
    return PostResult(
      id: object['id'],
      name: object['name'],
      job: object['job'],
      created: object['createdAt'],
    );
  }

  static Future<PostResult> connectToAPI(String name, String job) async {
    String apiURL = "https://reqres.in/api/users";

    var apiResult =
        await http.post(Uri.parse(apiURL), body: {"name": name, "job": job});
    var jsonObject = jsonDecode(apiResult.body);

    return PostResult.createPostResult(jsonObject);
  }
}
