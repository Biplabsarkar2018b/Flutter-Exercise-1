import 'package:flutter/material.dart';
import 'package:uu/utils/custom_text.dart';
import 'package:uu/widgets/text_inputs.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  final TextEditingController _passEditingController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _textEditingController.dispose();
    _passEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          width: double.infinity,
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 150,
              ),
              Flexible(
                child: Container(),
                flex: 2,
              ),
              //logo
              Center(
                child: CustomText(shadow: [
                  Shadow(
                    blurRadius: 80,
                    color: Colors.blue,
                  )
                ], text: 'SOCIAL', fontSize: 70),
              ),
              //gap
              const SizedBox(
                height: 60.0,
              ),
              //text field email
              CustomTextField(
                  textEditingController: _textEditingController,
                  text: 'Enter Email or Username',
                  textInputType: TextInputType.emailAddress),
              //gap
              const SizedBox(
                height: 30,
              ),
              //text field password
              CustomTextField(
                  textEditingController: _passEditingController,
                  text: 'Enter Password',
                  textInputType: TextInputType.text,
                  isPass: true),
              const SizedBox(
                height: 30,
              ),
              //login button
              InkWell(
                child: Container(
                  child: const Text('Log In'),
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                      ),
                      color: Colors.blue),
                ),
              ),
              const SizedBox(height: 12),
              Flexible(
                child: Container(),
                flex: 2,
              ),
              //transition to signup
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text('Are You A New User ?'),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: Text(
                        'Sign up',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
