import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:omar_advanced_course/core/theme/styles.dart';

class DonTHaveAccount extends StatelessWidget {
  const DonTHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account yet?  ',
            style: TextStyles.font13DarkBlueRegular,
          ),
          TextSpan(
            text: ' Sign Up',
            style: TextStyles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // context.pushReplacementNamed(
                //   Routes.signUpScreen,
                // );
              },
          ),
        ],
      ),
    );
  }
}
