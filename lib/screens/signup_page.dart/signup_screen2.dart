import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linkedin_app/screens/signup_page.dart/signup_screen3.dart';
import 'package:linkedin_app/widgets/constants.dart';

class SignUpScreen2 extends StatefulWidget {
  const SignUpScreen2({Key? key});

  @override
  _SignUpScreen2State createState() => _SignUpScreen2State();
}

class _SignUpScreen2State extends State<SignUpScreen2> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  bool _showError = false;

  void _navigateToNextScreen() {
    if (_firstNameController.text.isEmpty || _lastNameController.text.isEmpty) {
      setState(() {
        _showError = true;
      });
    } else {
      setState(() {
        _showError = false;
      });
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SignUpScreen3(),
        ),
      );
    }
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    super.dispose();
  }

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
                        "Tambahkan Nama Anda",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                        controller: _firstNameController,
                        decoration: InputDecoration(
                          labelText: "Nama depan",
                          errorText: _showError && _firstNameController.text.isEmpty
                              ? "Harap isi nama depan"
                              : null,
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        controller: _lastNameController,
                        decoration: InputDecoration(
                          labelText: "Nama belakang",
                          errorText: _showError && _lastNameController.text.isEmpty
                              ? "Harap isi nama belakang"
                              : null,
                        ),
                      ),
                      SizedBox(height: 35),
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: ElevatedButton(
                          onPressed: _navigateToNextScreen,
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
