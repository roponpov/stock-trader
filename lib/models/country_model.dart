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
    CountryModel(name: 'Cambodia', flag: IconConstant.cambodiaFlagLogo, code: '+855'),
    CountryModel(name: 'Singapore', flag: IconConstant.singaporeFlagLogo, code: '+65'),
    CountryModel(name: 'Malaysia', flag: IconConstant.malaysiaFlagLogo, code: '+60'),
    CountryModel(name: 'Philippines', flag: IconConstant.philippinesFlagLogo, code: '+63'),
    CountryModel(name: 'Indonesia', flag: IconConstant.indonesiaFlagLogo, code: '+62'),
    CountryModel(name: 'Laos', flag: IconConstant.laosFlagLogo, code: '+856'),
    CountryModel(name: 'South Korea', flag: IconConstant.koreaFlagLogo, code: '+82'),
    CountryModel(name: 'Japan', flag: IconConstant.japanFlagLogo, code: '+81'),
    CountryModel(name: 'China', flag: IconConstant.chinaFlagLogo, code: '+86'),
    CountryModel(name: 'United States', flag: IconConstant.usaFlagLogo, code: '+1'),
  ];
}