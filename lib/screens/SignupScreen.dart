import 'package:flutter/material.dart';
import 'package:flutter_intro/screens/LoginScreen.dart';
import 'package:flutter_intro/widgets/CustomTextField.dart';
import 'package:flutter_intro/widgets/PasswordField.dart';
import 'package:flutter_intro/widgets/PrimaryButton.dart';

class SignupScreen extends StatefulWidget {
  static String routeName = "/signup";
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
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
                        labelText: "First Name",
                        hintText: "Enter your first name",
                        controller: firstnameController,
                        textInputType: TextInputType.name),
                    const SizedBox(
                      height: 20.0,
                    ),
                    CustomTextField(
                        labelText: "Last Name",
                        hintText: "Enter your last name",
                        controller: lastnameController,
                        textInputType: TextInputType.name),
                    const SizedBox(
                      height: 20.0,
                    ),
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
                    PasswordField(
                      labelText: "Confirm Password",
                      hintText: "Re-enter your password ",
                      controller: passwordController,
                      obscureText: obscurePassword,
                      onTap: handleObscurePassword,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    PrimaryButton(
                        text: "SignUp",
                        iconData: Icons.app_registration,
                        onPress: () {
                          Navigator.pushReplacementNamed(
                              context, LoginScreen.routeName);
                        }),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, LoginScreen.routeName);
                          },
                          child: const Text(
                            " Have an account? Login here.",
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
