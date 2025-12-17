import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/constants/image_constant.dart';
import '../../models/onboarding_model.dart';
import '../../viewmodels/onboarding_view_model.dart';
import '../../widgets/status_app_bar_widget.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<OnboardingModel> onboardings = [
      OnboardingModel(
        imagePath: ImageConstant.onboardingDashboard,
        title: 'stock_trading_suit'.tr,
        description: 'streamline_your_investment_decisions_with_expert_guidance'.tr,
      ),
      OnboardingModel(
        imagePath: ImageConstant.onboardingPortfolio,
        title: 'boost_your_profits'.tr,
        description: 'unlocking_profit_potential_for_financial_growth'.tr,
      )
    ];
    final OnboardingViewModel onboardingViewModel = Get.put(OnboardingViewModel());
    final ThemeData theme = Theme.of(context);
    final Size size = MediaQuery.sizeOf(context);

    return StatusAppBarWidget(
      color: Colors.transparent,
      brightness: Brightness.light,
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5,right: 10),
                    child: TextButton(
                      onPressed: () {  },
                      child: Text(
                        'skip'.tr,
                        style: theme.textTheme.labelLarge
                            ?.copyWith(color: theme.colorScheme.primary),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: PageView(
                    onPageChanged: (index) => onboardingViewModel.switchSelectedOnboardingIndex(index),
                    children: List.generate(
                      onboardings.length,
                      (index) {
                        final OnboardingModel onboarding = onboardings[index];
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              onboarding.imagePath,
                              width: MediaQuery.sizeOf(context).width / 1.2,
                            ),
                            const SizedBox(height: 30),
                            Text(
                              onboarding.title,
                              style: theme.textTheme.headlineSmall?.copyWith(
                                color: theme.colorScheme.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: size.width / 1.4,
                              child: Text(
                                onboarding.description,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.labelLarge?.copyWith(
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    onboardings.length,
                    (index) {
                      return Obx(
                        () => AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          margin: const EdgeInsets.symmetric(horizontal: 2),
                          width: 30,
                          height: 8,
                          decoration: BoxDecoration(
                            color: (onboardingViewModel.selectedOnboardingIndex.value == index)
                              ? theme.colorScheme.primary
                              : theme.colorScheme.onPrimary,
                            borderRadius: BorderRadius.circular(5)),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                  child: Row(
                    spacing: 16,
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            shape: WidgetStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            side: WidgetStateProperty.all(
                              BorderSide(color: theme.colorScheme.primary),
                            ),
                          ),
                          child: Text('sign_in'.tr),
                        ),
                      ),
                      Expanded(
                        child: FilledButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            shape: WidgetStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                          child: Text('sign_up'.tr),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
