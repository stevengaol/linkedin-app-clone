import 'package:flutter/material.dart';
import 'package:linkedin_app/main_page.dart';

class JobScreen extends StatefulWidget {
  const JobScreen({super.key});

  @override
  State<JobScreen> createState() => _JobScreenState();
}

class _JobScreenState extends State<JobScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Pekerjaan di Indonesia'),
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainPage()),
            );
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              JobCard(
                companyName: "PT. BANK NEGARA INDONESIA (Persero) Tbk",
                jobTitle: "Solutions Architect",
                location: "Jakarta Raya, Indonesia (Di Kantor)",
                responseTime: "Waktu untuk memberikan tanggapan biasanya 4 hari",
                promoted: true,
                profileImageUrl: 'assets/job1.jpg', // Local image asset
              ),
              JobCard(
                companyName: "PT. Indosat Tbk",
                jobTitle: "Sr. Officer-Rebuy & CVM (Circle Sumatra)",
                location: "Medan, Sumatera Utara, Indonesia (Di Kantor)",
                responseTime: "",
                promoted: true,
                profileImageUrl: 'assets/job2.png', // Local image asset
              ),
              JobCard(
                companyName: "PT Chandra Asri Pacific Tbk",
                jobTitle: "Reliability Engineering Manager",
                location: "Cilegon, Banten, Indonesia (Di Kantor)",
                responseTime: "",
                promoted: true,
                profileImageUrl: 'assets/job5.webp', // Local image asset
              ),
              JobCard(
                companyName: "PT Quality Assurance",
                jobTitle: "Quality Assurance Analyst",
                location: "",
                responseTime: "",
                promoted: true,
                profileImageUrl: 'assets/job4.png', // Local image asset
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class JobCard extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String location;
  final String responseTime;
  final bool promoted;
  final String profileImageUrl;

  const JobCard({
    Key? key,
    required this.companyName,
    required this.jobTitle,
    required this.location,
    required this.responseTime,
    required this.promoted,
    required this.profileImageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipOval(
              child: Image.asset(
                profileImageUrl,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    jobTitle,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(companyName),
                  SizedBox(height: 5),
                  if (location.isNotEmpty) Text(location),
                  SizedBox(height: 5),
                  if (responseTime.isNotEmpty) Text(responseTime),
                  SizedBox(height: 5),
                  if (promoted) Text('Dipromosikan', style: TextStyle(color: Colors.blue)),
                  SizedBox(height: 5),
                  ElevatedButton(
                    onPressed: () {
                      // Add action here
                    },
                    child: Text('Melamar Mudah'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
