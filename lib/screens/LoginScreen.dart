import 'package:flutter/material.dart';
import 'package:flutter_intro/arguments/ScreenArguments.dart';
import 'package:flutter_intro/screens/DashBoard.dart';
import 'package:flutter_intro/screens/SignupScreen.dart';
import 'package:flutter_intro/widgets/CustomTextField.dart';
import 'package:flutter_intro/widgets/PasswordField.dart';
import 'package:flutter_intro/widgets/PrimaryButton.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = "/login";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                width: width * .9,
                child: Column(
                  children: [
                    CustomTextField(
                        labelText: "Email Address",
                        hintText: "Enter your email address",
                        controller: emailController,
                        textInputType: TextInputType.emailAddress),
                    const SizedBox(
                      height: 20.0,
                    ),
                    PasswordField(
                      labelText: "Password",
                      hintText: "Enter your password",
                      controller: passwordController,
                      obscureText: obscurePassword,
                      onTap: handleObscurePassword,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    PrimaryButton(
                        text: "Login",
                        iconData: Icons.login,
                        onPress: () {
                          Navigator.pushReplacementNamed(
                              context, DashBoard.routeName,
                              arguments: ScreenArguments(emailController.text));
                        }),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, SignupScreen.routeName);
                          },
                          child: const Text(
                            "Don't have an account? Sign up here.",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  handleObscurePassword() {
    setState(() {
      obscurePassword = !obscurePassword;
    });
  }
}
