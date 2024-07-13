import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin_app/model/user_post_model.dart';
import 'package:provider/provider.dart';
import 'package:linkedin_app/providers/user_post_provider.dart';
import 'package:linkedin_app/main_page.dart';
import 'package:linkedin_app/widgets/constants.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final TextEditingController _descriptionController = TextEditingController();

  void _post(BuildContext context) async {
    final userPostProvider = Provider.of<UserPostProvider>(context, listen: false);

    UserPost newUserPost = UserPost(
      profileUrl: 'assets/profile6.jpg',
      name: 'Steven',
      headline: 'Flutter Developer',
      description: _descriptionController.text,
      image: 'assets/image1.jpg',
      comments: '0',
      likes: '0',
      tags: '#flutter',
    );

    Posts newPost = Posts.fromUserPost(newUserPost);

    try {
      await userPostProvider.addPost(newPost as UserPost);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainPage()),
      );
    } catch (e) {
      print(e);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainPage()),
            );
          },
          child: Icon(Icons.arrow_back, size: 30, color: Colors.blue),
        ),
        title: Text("Buat Postingan"),
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.paperPlane),
            onPressed: () => _post(context),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            controller: _descriptionController,
            decoration: InputDecoration(
              hintText: "Hi Apa kabar",
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.all(10),
            ),
            maxLines: null,
            autofocus: true,
          ),
        ),
      ),
    );
  }
}
