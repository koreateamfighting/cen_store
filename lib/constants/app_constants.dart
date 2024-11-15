// lib/constants/app_constants.dart

class AppDimensions {
  static const double width = 1920.0;
  static const double height = 1080.0;
  // 드롭다운 항목 목록
  static List<String> countries = ['대한민국', '일본', '미국'];
// 초기 선택값 설정
  static String selectedCountry = '대한민국';



  static List<String>  expirationPeriodYear = ['2025','2026','2027','2028','2029','2030'];
  static String selectedexpirationPeriodYear = '2027';


  static List<String> expirationPeriodMonth = [
    for (int i = 1; i <= 12; i++) i.toString()
  ];

  static String selectedexpirationPeriodMonth = '1';
}
