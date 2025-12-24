import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../models/country_model.dart';

void showCountryPicker(BuildContext context,ThemeData theme, {required void Function(CountryModel) onValueChange}) {
  Get.bottomSheet(
    Container(
      padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Select Country',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(bottom: 16),
              itemCount: CountryModel.countries.length,
              itemBuilder: (context, index) {
                final country = CountryModel.countries[index];
                return InkWell(
                  splashFactory: NoSplash.splashFactory,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    Get.back();
                    onValueChange(country);
                  },
                  child: Card.filled(
                    color: theme.colorScheme.onPrimary,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      child: Row(
                        children: [
                          CircleAvatar(backgroundImage: AssetImage(country.flag)),
                          const SizedBox(width: 16),
                          Text(country.name),
                          const Spacer(),
                          Text(country.code),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ),
    backgroundColor: Colors.transparent,
  );
}