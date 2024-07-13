import 'package:flutter/material.dart';
import 'package:linkedin_app/main_page.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Notifications', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        leading: InkWell(
          onTap: () {
            // Navigasi kembali ke halaman utama saat ikon panah kiri ditekan
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainPage()),
            );
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          NotificationTile(
            image: "assets/profile1.jpg",
            title: 'Baru-baru ini, Anda berinteraksi dengan PT Astra International Tbk - TSO Auto2000.',
            time: '3 jam',
          ),
          NotificationTile(
            image: "assets/profile2.jpg",
            title: 'Orang dengan minat yang sama mengikuti Ruslan Harling. Ikuti untuk melihat postingnya.',
            time: '4 jam',
          ),
          NotificationTile(
            image: "assets/profile4.jpg",
            title: 'Orang dengan minat yang sama mengikuti Adam Tirta. Ikuti untuk melihat postingnya.',
            time: '6 jam',
          ),
        ],
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final String image;
  final String title;
  final String time;

  NotificationTile({required this.image, required this.title, required this.time});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(image),
          ),
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Row(
              children: [
                Icon(Icons.access_time, size: 14, color: Colors.grey),
                SizedBox(width: 4),
                Text(
                  time,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          isThreeLine: true,
        ),
      ),
    );
  }
}
