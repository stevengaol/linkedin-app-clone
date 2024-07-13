import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthProvider with ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> login(String email, String password, BuildContext context) async {
    final url = Uri.parse('https://dummyjson.com/auth/login');
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode({'username': email, 'password': password});

    _isLoading = true;
    notifyListeners();

    try {
      final response = await http.post(url, headers: headers, body: body);

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        print('Login successful: $data');
      
        Navigator.pushReplacementNamed(context, '/main');
      } else {
        print('Login failed: ${response.body}');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Login failed: ${response.body}')),
        );
      }
    } catch (e) {
      print('Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    }

    _isLoading = false;
    notifyListeners();
  }
}
