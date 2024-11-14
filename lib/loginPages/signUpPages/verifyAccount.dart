import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perspectives/loginPages/loginMain.dart';

import '../../CommonUi/buttons/ButtonStyleLong.dart';
import '../../CommonUi/textfields/MyTextFieldStyle.dart';

class VerifyAccount extends StatefulWidget {
  const VerifyAccount({super.key});

  @override
  State<VerifyAccount> createState() => _VerifyAccountState();
}

class _VerifyAccountState extends State<VerifyAccount> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _verificationCode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_left,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Spacer(),
                    Text(
                      'Verify Account',
                      style: GoogleFonts.abel(fontSize: 20),
                    ),
                    Spacer(),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'A verification code has been sent to your email please enter the code below',
                  style: GoogleFonts.openSans(),
                ),
                const SizedBox(
                  height: 50,
                ),
                MyTextFieldStyle(
                    textfieldController: _verificationCode,
                    labelText: 'Verification code',
                    textFieldType: 'intType'),
                Spacer(),
                ButtonStyleLong(
                  buttonText: 'Create account',
                  onTap: () {
                    // _formKey.currentState!.validate();
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
