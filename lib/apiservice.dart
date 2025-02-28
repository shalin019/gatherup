import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();

  Future<void> registerUser({
    required String name,
    required String gender,
    required String dob,
    required String city,
    required String state,
    required String email,
    required String password,
  }) async {
    const String url = "https://0799-49-43-35-98.ngrok-free.app/api/user/signup"; // Replace with actual API URL

    Map<String, dynamic> data = {
      "name": name,
      "gender": gender,
      "dob": dob,
      "city": city,
      "state": state,
      "email": email,
      "password": password
    };

    try {
      Response response = await dio.post(url, data: data);
      print("Response: ${response.data}");
    } catch (e) {
      print("Error: $e");
    }
  }
}
