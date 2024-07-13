class UserPost {
  final String name;
  final String profileUrl;
  final String headline;
  final String tags;
  final String description;
  final String image;
  final String comments;
  final String likes;

  UserPost({
    required this.name,
    required this.profileUrl,
    required this.headline,
    required this.tags,
    required this.description,
    required this.image,
    required this.comments,
    required this.likes,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'profileUrl': profileUrl,
      'headline': headline,
      'tags': tags,
      'description': description,
      'image': image,
      'comments': comments,
      'likes': likes,
    };
  }
}

class Posts {
  int? id;
  String? title;
  String? body;
  List<String>? tags;
  Reactions? reactions;
  int? views;
  int? userId;

  Posts({
    this.id,
    this.title,
    this.body,
    this.tags,
    this.reactions,
    this.views,
    this.userId,
  });

  Posts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    body = json['body'];
    tags = json['tags']?.cast<String>();
    reactions = json['reactions'] != null
        ? Reactions.fromJson(json['reactions'])
        : null;
    views = json['views'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'body': body,
      'tags': tags,
      'reactions': reactions?.toJson(),
      'views': views,
      'userId': userId,
    };
  }

  static Posts fromUserPost(UserPost newUserPost) {
    return Posts(
      title: newUserPost.headline,
      body: newUserPost.description,
      tags: newUserPost.tags.split(','), // Misalnya, pisahkan tags dengan koma
      reactions: Reactions(likes: int.parse(newUserPost.likes), dislikes: 0),
      views: 0,
      userId: 1, // Ganti dengan userId yang sesuai
    );
  }
}

class Reactions {
  int? likes;
  int? dislikes;

  Reactions({this.likes, this.dislikes});

  Reactions.fromJson(Map<String, dynamic> json) {
    likes = json['likes'];
    dislikes = json['dislikes'];
  }

  Map<String, dynamic> toJson() {
    return {
      'likes': likes,
      'dislikes': dislikes,
    };
  }
}
