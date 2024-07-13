class UserPostModel {
  final String name;
  final String profileUrl;
  final String headline;
  final String tags;
  final String description;
  final bool isVideoPost;
  final String comments;
  final String video;
  final bool isOnline;
  final String image;
  final String likes;

  UserPostModel({
    required this.name,
    required this.profileUrl,
    required this.headline,
    required this.tags,
    required this.description,
    required this.isVideoPost,
    required this.comments,
    required this.video,
    required this.isOnline,
    required this.image,
    required this.likes,
  });

  static fromJson(data) {}

  Object? toJson() {}
}

class Data {
  static final List<UserPostModel> postList = [
    UserPostModel(
      name: "Steven",
      profileUrl: "assets/profile1.jpg",
      headline: "HR Executive",
      tags: "#positif #motivasi #pembelajaran #kemajuan #jaringan #linkedin #nevergiveup #staypositif #staystrong #positifattitude",
      description: "Tetap Kuat!\nTetap Tegak!\nPenolakan berarti peluang lebih baik menanti Anda di tempat lain.\nPikiran Anda?",
      isVideoPost: false,
      comments: "100",
      video: "",
      isOnline: false,
      image: "assets/post5.jpg",
      likes: "800",
    ),
    UserPostModel(
      name: "Imanuel P",
      profileUrl: "assets/profile2.jpg",
      headline: "MEAN Stack Developer | Freelancer",
      tags: "#meanstack",
      description: "MEAN adalah tumpukan perangkat lunak JavaScript...",
      isVideoPost: false,
      comments: "1k",
      video: "",
      isOnline: true,
      image: "assets/post2.jpeg",
      likes: "20k",
    ),
        UserPostModel(
        name: "Andi S",
        profileUrl: "assets/profile4.jpg",
        headline: "Logo Designer | Freelancer |",
        tags: "#datascience #machinelearning #programming #python #joke",
        description:"Google, Stack Overflow adalah penyelamat Anda :)",
        isVideoPost: false,
        comments: "100",
        video: "",
        isOnline: true,
        image: "assets/post3.png",
        likes: "230"),
    UserPostModel(
        name: "kevin",
        profileUrl: "assets/profile6.jpg",
        headline: "Flutter Open Projects | Flutter Drat world",
        tags:
            "#FlutterOpenProject, #FlutterMagicWorld, #Mobile&WebOpenApps, #Flutter+Dart",
        description:
            "Flutter adalah kerangka pengembangan aplikasi seluler sumber terbuka yang dibuat oleh Google. Ini digunakan untuk mengembangkan aplikasi untuk Android dan iOS, serta menjadi metode utama dalam membuat aplikasi untuk Google Fuchsia.",
        isVideoPost: false,
        comments: "20k",
        video: "",
        isOnline: true,
        image: "assets/post4.png",
        likes: "101k"),
    // Tambahkan UserPostModel lain di sini...
  ];
}
