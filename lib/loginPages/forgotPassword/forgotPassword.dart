import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perspectives/loginPages/forgotPassword/createNewPassword.dart';

import '../../CommonUi/buttons/ButtonStyleLong.dart';
import '../../CommonUi/textfields/MyTextFieldStyle.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
 final _formKey = GlobalKey<FormState>();

  final TextEditingController _email = TextEditingController();
  

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
                        text: 'Forgotten Password\n',
                        style: GoogleFonts.abel(fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      TextSpan(
                        text: 'Please enter an email address that you used to create your account with so we can send you an email to reset your password.',
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
                
                Spacer(),
                
                ButtonStyleLong(
                  buttonText: 'Send email',
                  onTap: () {
                   // _formKey.currentState!.validate();
                   Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CreateNewPassword()),
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