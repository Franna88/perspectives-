import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perspectives/loginPages/forgotPassword/successfullPasswordChange.dart';

import '../../CommonUi/buttons/ButtonStyleLong.dart';
import '../../CommonUi/textfields/MyTextFieldStyle.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _newPassword = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

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
                        text: 'Create New Password\n',
                        style: GoogleFonts.abel(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      TextSpan(
                        text:
                            'Please enter an email address that you used to create your account with so we can send you an email to reset your password.',
                        style: GoogleFonts.openSans(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                MyTextFieldStyle(
                    textfieldController: _newPassword,
                    labelText: 'New Password',
                    textFieldType: 'intType'),
                const SizedBox(
                  height: 30,
                ),
                MyTextFieldStyle(
                    textfieldController: _confirmPassword,
                    labelText: 'Confirm Password',
                    textFieldType: 'intType'),
                Spacer(),
                ButtonStyleLong(
                  buttonText: 'Reset Password',
                  onTap: () {
                    //_formKey.currentState!.validate();
                    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SuccessfullPasswordChange()),
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
