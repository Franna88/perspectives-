import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perspectives/CommonUi/buttons/ButtonStyleLong.dart';
import 'package:perspectives/homePage.dart';
import 'package:perspectives/loginPages/loginMain.dart';
import 'package:perspectives/myUtility.dart';

class Login extends StatefulWidget {
  final Widget? child;
  const Login({super.key, this.child});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // @override
  // void initState() {
  //   if (FirebaseAuth.instance.currentUser!.uid.isNotEmpty) {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => const HomePage(pageIndex: 0),
  //       ),
  //     );
  //   }
  //   super.initState();
  // }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final currentUser = FirebaseAuth.instance.currentUser;
      if (currentUser != null && currentUser.uid.isNotEmpty) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(pageIndex: 0),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          width: MyUtility(context).width,
          height: MyUtility(context).height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'PERSPECTIVE\n',
                        style: GoogleFonts.abel(fontSize: 40, letterSpacing: 4),
                      ),
                      TextSpan(
                        text: 'Your memories await.',
                        style: GoogleFonts.openSans(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                ButtonStyleLong(
                  buttonText: 'Login',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginMain()),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
