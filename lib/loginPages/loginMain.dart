import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perspectives/CommonUi/buttons/ButtonStyleLong.dart';
import 'package:perspectives/CommonUi/textfields/MyTextFieldStyle.dart';
import 'package:perspectives/CommonUi/buttons/myTextButtons.dart';
import 'package:perspectives/UserAuthentification/firebase_auth_services.dart';
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
                    textfieldController: _emailController,
                    labelText: 'Email',
                    textFieldType: 'emailType'),
                const SizedBox(
                  height: 30,
                ),
                MyTextFieldStyle(
                    textfieldController: _passwordController,
                    labelText: 'Password',
                    textFieldType: 'passwordType'),
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
                  onTap: _signIn,
                  // onTap: () {
                  //   if (_formKey.currentState!.validate()) {
                  //     Navigator.pushReplacement(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => const HomePage(pageIndex: 0),
                  //       ),
                  //     );
                  //   }
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

  void _signIn() async {
    String userName = _userNameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    if (user != null) {
      print("User is successfully signed in");
      // Navigator.pushNamed(context, "/home");
      Navigator.push(
        context,
        // MaterialPageRoute(builder: (context) => const VerifyAccount()),
        MaterialPageRoute(
          builder: (context) => const HomePage(pageIndex: 0),
        ),
      );
    } else {
      print("Some error happened");
    }
  }
}
