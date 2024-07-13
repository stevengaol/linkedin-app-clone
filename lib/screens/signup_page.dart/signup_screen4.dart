import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linkedin_app/screens/welcome_page/welcome_page.dart';
import 'package:linkedin_app/widgets/constants.dart';

class SignUpScreen4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignUpScreen4State();
}

class _SignUpScreen4State extends State<SignUpScreen4> {
  bool remember = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool emailError = false;
  bool passwordError = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: SvgPicture.asset(
                    "assets/Logo.svg",
                    width: 35,
                    height: 35,
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Buat kata sandi Anda",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 50),
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          labelText: "Email",
                          errorText: emailError ? 'Masukkan alamat email' : null,
                        ),
                        onChanged: (value) {
                          setState(() {
                            emailError = false;
                          });
                        },
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          labelText: "Kata Sandi*",
                          errorText: passwordError ? 'Masukkan kata sandi' : null,
                        ),
                        onChanged: (value) {
                          setState(() {
                            passwordError = false;
                          });
                        },
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: remember,
                            activeColor: Colors.green[900],
                            onChanged: (value) {
                              setState(() {
                                remember = value!;
                              });
                            },
                          ),
                          Text(
                            "Ingatkan Saya.",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[800],
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Pelajari Lebih Lanjut",
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: ElevatedButton(
                          onPressed: () {
                            String email = emailController.text;
                            String password = passwordController.text;

                            // Example validation (you should add your own validation)
                            if (email.isNotEmpty && password.isNotEmpty) {
                              // Navigate to WelcomePage if validation succeeds
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => WelcomePage(),
                                ),
                              );
                            } else {
                              // Handle case where email or password is empty
                              // You can show an error message or perform any action
                              setState(() {
                                emailError = email.isEmpty;
                                passwordError = password.isEmpty;
                              });
                            }
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.blue),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                                side: BorderSide(color: kPrimaryColor),
                              ),
                            ),
                          ),
                          child: Text(
                            "Lanjutkan",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
