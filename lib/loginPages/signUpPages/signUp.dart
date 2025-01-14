import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perspectives/UserAuthentification/firebase_auth_services.dart';
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

  final FirebaseAuthServices _auth = FirebaseAuthServices();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();

  @override
  void dispose() {
    _userNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
                    textfieldController: _userNameController,
                    labelText: 'Name',
                    textFieldType: ''),
                const SizedBox(
                  height: 30,
                ),
                MyTextFieldStyle(
                    textfieldController: _emailController,
                    labelText: 'Email',
                    textFieldType: 'emailType'),
                const SizedBox(
                  height: 50,
                ),
                MyTextFieldStyle(
                    textfieldController: _passwordController,
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
                  onTap: _signUp,
                  // onTap: () {
                  //   // _formKey.currentState!.validate();
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const VerifyAccount()),
                  //   );
                  // },
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

  void _signUp() async {
    String userName = _userNameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    if (user != null) {
      print("User is successfully created");
      // Navigator.pushNamed(context, "/home");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const VerifyAccount()),
      );
    } else {
      print("Some error happened");
    }
  }
}
