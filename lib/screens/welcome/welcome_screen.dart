import 'package:doctor_app/constants.dart';
import 'package:doctor_app/screens/auth/sign_in_screen.dart';
import 'package:doctor_app/screens/auth/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/splash_bg.svg"),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                children: [
                  Spacer(),
                  SvgPicture.asset(
                    "assets/icons/gerda_logo.svg",
                  ),
                  Spacer(),
                  // As you can see we need more paddind on our btn
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFF6CD8D1),
                      ),
                      child: Text("Sign Up"),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInScreen(),
                            )),
                        style: TextButton.styleFrom(
                          // backgroundColor: Color(0xFF6CD8D1),
                          elevation: 0,
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Color(0xFF6CD8D1)),
                          ),
                        ),
                        child: Text("Sign In"),
                      ),
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
