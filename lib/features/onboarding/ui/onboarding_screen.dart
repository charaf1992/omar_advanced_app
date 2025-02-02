import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omar_advanced_course/core/theme/styles.dart';
import 'package:omar_advanced_course/features/onboarding/widgets/doc_image_and_text.dart';
import 'package:omar_advanced_course/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:omar_advanced_course/features/onboarding/widgets/get_started_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                const DocLogoAndName(),
                SizedBox(height: 30.h),
                const DocImageAndText(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Text(
                        'Manage and schedule all of your doctor appointments easily with Docdoc\nto get a new experience',
                        style: TextStyles.font13GreyRegular,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30.h),
                      const GetStartedButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
