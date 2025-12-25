import 'package:get/get.dart';

import '../core/constants/icon_constant.dart';

class CountryModel {
  final String name;
  final String flag;
  final String code;

  CountryModel({
    required this.name,
    required this.flag,
    required this.code,
  });

  static List<CountryModel> countries = [
    CountryModel(name: 'cambodia'.tr, flag: IconConstant.cambodiaFlagLogo, code: '+855'),
    CountryModel(name: 'singapore'.tr, flag: IconConstant.singaporeFlagLogo, code: '+65'),
    CountryModel(name: 'malaysia'.tr, flag: IconConstant.malaysiaFlagLogo, code: '+60'),
    CountryModel(name: 'philippines'.tr, flag: IconConstant.philippinesFlagLogo, code: '+63'),
    CountryModel(name: 'indonesia'.tr, flag: IconConstant.indonesiaFlagLogo, code: '+62'),
    CountryModel(name: 'laos'.tr, flag: IconConstant.laosFlagLogo, code: '+856'),
    CountryModel(name: 'japan'.tr, flag: IconConstant.japanFlagLogo, code: '+81'),
    CountryModel(name: 'china'.tr, flag: IconConstant.chinaFlagLogo, code: '+86'),
    CountryModel(name: 'united_states'.tr, flag: IconConstant.usaFlagLogo, code: '+1'),
    CountryModel(name: 'south_korea'.tr, flag: IconConstant.koreaFlagLogo, code: '+82'),
  ];
}