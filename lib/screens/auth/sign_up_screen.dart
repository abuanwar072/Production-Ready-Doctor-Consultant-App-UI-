import 'package:doctor_app/constants.dart';
import 'package:doctor_app/screens/auth/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'components/sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  static final route = '/signUpScreen';
  // It's time to validat the text field
  final _formKey = GlobalKey<FormState>();

  Future<void> _trySignUp() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      //After successfully signing up, the app should reroute you to the login page and ask you to login
    }
  }

  @override
  Widget build(BuildContext context) {
    // But still same problem, let's fixed it
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            "assets/icons/Sign_Up_bg.svg",
            height: MediaQuery.of(context).size.height,
            // Now it takes 100% of our height
          ),
          Center(
            child: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create Account",
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text("Already have an account?"),
                        TextButton(
                          onPressed: () => Navigator.pushReplacementNamed(
                              context, SignInScreen.route),
                          child: Text(
                            "Sign In!",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: defaultPadding * 2),
                    SignUpForm(formKey: _formKey),
                    const SizedBox(height: defaultPadding * 2),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _trySignUp,
                        child: Text("Sign Up"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
