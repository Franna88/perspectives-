import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perspectives/CommonUi/buttons/ButtonStyleLong.dart';
import 'package:perspectives/CommonUi/textfields/MyTextFieldStyle.dart';
import 'package:perspectives/CommonUi/buttons/myTextButtons.dart';
import 'package:perspectives/homePage.dart';
import 'package:perspectives/loginPages/forgotPassword/forgotPassword.dart';
import 'package:perspectives/loginPages/signUpPages/signUp.dart';
import 'package:perspectives/myUtility.dart';

class LoginMain extends StatefulWidget {
  const LoginMain({super.key});

  @override
  State<LoginMain> createState() => _LoginMainState();
}

class _LoginMainState extends State<LoginMain> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

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
                IconButton(
                  icon: Icon(
                    Icons.keyboard_arrow_left,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Login\n',
                        style: GoogleFonts.abel(fontSize: 24),
                      ),
                      TextSpan(
                        text: 'Please enter your account details below',
                        style: GoogleFonts.openSans(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                MyTextFieldStyle(
                    textfieldController: _email,
                    labelText: 'Email',
                    textFieldType: 'emailType'),
                const SizedBox(
                  height: 30,
                ),
                MyTextFieldStyle(
                    textfieldController: _password,
                    labelText: 'Password',
                    textFieldType: ''),
                const SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: MyTextButtons(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgotPassword()),
                      );
                      //ADD ROUTE
                    },
                    buttonText: 'Forgot password?',
                    isUnderlined: true,
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: GoogleFonts.openSans(),
                    ),
                    MyTextButtons(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()),
                        );
                      },
                      buttonText: 'Sign Up',
                      isUnderlined: true,
                      isBold: true,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ButtonStyleLong(
                  buttonText: 'Login',
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(pageIndex: 0),
                        ),
                      );
                    }
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
