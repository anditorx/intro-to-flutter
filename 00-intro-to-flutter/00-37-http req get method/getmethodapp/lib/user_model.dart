import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:developer';

class User {
  final String id; // Tambahkan 'final' dan non-nullable
  final String email;

  User({
    required this.id,
    required this.email,
  });

  factory User.createUser(Map<String, dynamic> object) {
    return User(
      id: object['id'].toString(),
      email: object['email'],
    );
  }

  static Future<User> connectToAPI(String id) async {
    String apiURL = "https://reqres.in/api/users/" + id;

    var apiResult = await http.get(Uri.parse(apiURL));
    var jsonObject = jsonDecode(apiResult.body);

    var userData = (jsonObject as Map<String, dynamic>)['data'];
    log('userData : $userData');

    return User.createUser(userData);
  }
}
