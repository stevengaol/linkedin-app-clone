import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:linkedin_app/model/user_post_model.dart';

class UserPostProvider with ChangeNotifier {
  List<Posts> _posts = [];

  List<Posts> get posts => _posts;

  Future<void> addPost(Posts post) async {
    final url = Uri.parse('https://dummyjson.com/posts');
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode(post.toJson());

    try {
      final response = await http.post(url, headers: headers, body: body);

      if (response.statusCode == 201) {
        final newPost = Posts.fromJson(jsonDecode(response.body));
        _posts.add(newPost);
        notifyListeners();
      } else {
        throw Exception('Failed to post: ${response.reasonPhrase}');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  Future<void> fetchPosts() async {
    final url = Uri.parse('https://dummyjson.com/posts');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        _posts = (data['posts'] as List)
            .map((post) => Posts.fromJson(post))
            .toList()
            .cast<Posts>();
        notifyListeners();
      } else {
        throw Exception('Failed to fetch posts: ${response.reasonPhrase}');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
