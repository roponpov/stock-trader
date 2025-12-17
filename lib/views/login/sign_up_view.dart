import 'package:flutter/material.dart';
import '../../core/constants/icon_constant.dart';
import '../../core/constants/image_constant.dart';
import '../../widgets/status_app_bar_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return StatusAppBarWidget(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image.asset(
                //   IconConstant.appIcon,
                //   height: 50,
                // ),
                const Icon(Icons.account_balance,size: 50),

                Text(
                  'Join StockTrader',
                  style: theme.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold
                  ),
                ),

                Text(
                  'Embark on your investment journey with a single dollar.',
                  style: theme.textTheme.bodyLarge,
                ),

                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: theme.primaryColor
                      )
                    ),
                    focusedBorder: null,
                    disabledBorder: null,
                    errorBorder: null,
                    focusedErrorBorder: null,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
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
