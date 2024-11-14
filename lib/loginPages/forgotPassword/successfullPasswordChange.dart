import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perspectives/loginPages/loginMain.dart';

import '../../CommonUi/buttons/ButtonStyleLong.dart';

class SuccessfullPasswordChange extends StatelessWidget {
  const SuccessfullPasswordChange({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 120,
              ),
              Image.asset('images/passReset.png'),
              const SizedBox(
                height: 50,
              ),
              Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Success!\n',
                      style: GoogleFonts.abel(
                          fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    TextSpan(
                      text:
                          '\nYour password has been changed.\nFrom now on use your new password to log in.',
                      style: GoogleFonts.openSans(),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Spacer(),
              ButtonStyleLong(
                buttonText: 'OK',
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
      ),
    );
  }
}
