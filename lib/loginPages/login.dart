import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perspectives/CommonUi/buttons/ButtonStyleLong.dart';
import 'package:perspectives/loginPages/loginMain.dart';
import 'package:perspectives/myUtility.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                      style: GoogleFonts.openSans(fontSize: 15)),
                ],
              ),
            ),
            Spacer(),
            ButtonStyleLong(
              buttonText: 'Login',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginMain()),
                );
              },
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
