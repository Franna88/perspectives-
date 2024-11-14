import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perspectives/loginPages/loginMain.dart';
import 'package:perspectives/loginPages/signUpPages/verifyAccount.dart';

import '../../CommonUi/buttons/ButtonStyleLong.dart';
import '../../CommonUi/textfields/MyTextFieldStyle.dart';
import '../../CommonUi/buttons/myTextButtons.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _userName = TextEditingController();

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
                      'Sign Up',
                      style: GoogleFonts.abel(fontSize: 20),
                    ),
                    Spacer(),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                MyTextFieldStyle(
                    textfieldController: _userName,
                    labelText: 'Name',
                    textFieldType: ''),
                const SizedBox(
                  height: 30,
                ),
                MyTextFieldStyle(
                    textfieldController: _email,
                    labelText: 'Email',
                    textFieldType: 'emailType'),
                const SizedBox(
                  height: 50,
                ),
                MyTextFieldStyle(
                    textfieldController: _password,
                    labelText: 'Password',
                    textFieldType: ''),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      'Already have an account?',
                      style: GoogleFonts.openSans(),
                    ),
                    MyTextButtons(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginMain()),
                        );
                      },
                      buttonText: 'Sign In',
                      isUnderlined: true,
                      isBold: true,
                    )
                  ],
                ),
                Spacer(),
                const SizedBox(
                  height: 20,
                ),
                ButtonStyleLong(
                  buttonText: 'Verify account',
                  onTap: () {
                    // _formKey.currentState!.validate();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const VerifyAccount()),
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
