// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:linkedin_app/screens/forgot_password/forgot_screen.dart';
// import 'package:linkedin_app/screens/signin_page/signin_screen.dart';
// import 'package:linkedin_app/widgets/constants.dart';
// // Pastikan ini diimport

// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({super.key});

//   @override
//   State<SignUpScreen> createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const SizedBox(height: 20),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 8),
//                 child: SvgPicture.asset(
//                   'assets/Logo.svg',
//                   height: 35,
//                   width: 35,
//                 ),
//               ),
//               const SizedBox(height: 15),
//               Padding(
//                 padding: const EdgeInsets.all(20),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                       "Bergabung dengan LinkedIn",
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const SizedBox(height: 15),
//                     Row(
//                       children: [
//                         const Text(
//                           "atau",
//                           style: TextStyle(
//                             color: Colors.black54,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 5),
//                           child: InkWell(
//                             onTap: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => const SignInScreen(),
//                                   ));
//                             },
//                             child: const Text(
//                               "Login",
//                               style: TextStyle(
//                                   color: kPrimaryColor,
//                                   fontSize: 15,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 20),
//                     TextFormField(
//                       controller: _emailController,
//                       decoration: const InputDecoration(
//                         labelText: "Email atau No Hp",
//                       ),
//                     ),
//                     const SizedBox(height: 30),
//                     const Text(
//                       "Dengan mengklik Setuju & Bergabung atau Lanjutkan, Anda menyetujui Perjanjian Pengguna, Kebijakan Privasi, dan Kebijakan Cookie LinkedIn. Untuk pendaftaran dengan no telepon, kode verifikasi akan dikirim lewat SMS.",
//                       style: TextStyle(
//                         fontSize: 12,
//                       ),
//                     ),
//                     const SizedBox(height: 25),
//                     SizedBox(
//                       width: double.infinity,
//                       height: 55,
//                       child: ElevatedButton(
//                         onPressed: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => const SignInScreen(),
//                               ));
//                         },
//                         style: ButtonStyle(
//                             backgroundColor:
//                                 MaterialStateProperty.all<Color>(kPrimaryColor),
//                             shape: MaterialStateProperty.all<
//                                 RoundedRectangleBorder>(
//                               RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(25),
//                                 side: const BorderSide(color: kPrimaryColor),
//                               ),
//                             )),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: const [
//                             SizedBox(width: 8),
//                             Text("Setuju & Bergabung",
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 18,
//                                 )),
//                           ],
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         SizedBox(
//                           height: 0.3,
//                           width: MediaQuery.of(context).size.width / 2.5,
//                           child: Container(
//                             decoration: const BoxDecoration(
//                               color: Colors.black,
//                             ),
//                           ),
//                         ),
//                         const Text(
//                           "atau",
//                           style: TextStyle(
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 0.3,
//                           width: MediaQuery.of(context).size.width / 2.5,
//                           child: Container(
//                             decoration: const BoxDecoration(
//                               color: Colors.black,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 20),
//                     TextFormField(
//                       controller: _emailController,
//                       decoration: const InputDecoration(
//                         labelText: "Email atau No Hp",
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     TextFormField(
//                       controller: _passwordController,
//                       obscureText: true,
//                       decoration: const InputDecoration(
//                         labelText: "Sandi",
//                         suffixIcon: Icon(Icons.remove_red_eye, size: 30),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     InkWell(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => const ForgotScreen(),
//                             ));
//                       },
//                       child: const Text(
//                         "Lupakan Sandi",
//                         style: TextStyle(
//                           color: kPrimaryColor,
//                           fontSize: 14,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     SizedBox(
//                       width: double.infinity,
//                       height: 55,
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         style: ButtonStyle(
//                             backgroundColor:
//                                 MaterialStateProperty.all<Color>(kPrimaryColor),
//                             shape: MaterialStateProperty.all<
//                                 RoundedRectangleBorder>(
//                               RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(25),
//                                 side: const BorderSide(color: kPrimaryColor),
//                               ),
//                             )),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: const [
//                             SizedBox(width: 10),
//                             Text("Lanjut",
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 19,
//                                 )),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
