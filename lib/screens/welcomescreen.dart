import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:validationform/screens/SignUpScreen.dart';
import 'package:validationform/screens/singin_screen.dart';
import 'package:validationform/widget/WelComeButton.dart';
import '../theme/theme.dart';
import '../widget/custom_scaffold.dart';

class welcomesereen extends StatelessWidget {
  const welcomesereen({super.key,});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
              flex: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 40.0,
                ),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: 'Welcome Back!\n',
                            style: TextStyle(
                              fontSize: 45.0,
                              fontWeight: FontWeight.w600,
                            )),
                        TextSpan(
                            text:
                            '\nEnter personal details to your account',
                            style: TextStyle(
                              fontSize: 20,
                              // height: 0,
                            ))
                      ],
                    ),
                  ),
                ),
              )),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  const Expanded(
                    child: welcomebutton(
                      buttonText: 'Sign in',
                      onTap: singinscreen(),
                      color: Colors.transparent,
                      textColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: welcomebutton(
                      buttonText: 'Sign up',
                      onTap: const Signupscreen(),
                      color: Colors.white,
                      textColor: lightColorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
