part of '../theme.dart';

const _mulish = 'Mulish';

const _mulishStyle = TextStyle(fontFamily: _mulish, fontWeight: FontWeight.w400, color: Colors.black);

class TextStyles {
  TextStyles._();

  static TextStyles? _instance;

  factory TextStyles.instance() {
    return _instance ??= TextStyles._();
  }

  final mulish26 = _mulishStyle.copyWith(fontSize: 26);
  late final mulish26Bold = mulish26.copyWith(fontWeight: FontWeight.w700);
  final mulish22 = _mulishStyle.copyWith(fontSize: 20);
  late final mulish22Bold = mulish22.copyWith(fontWeight: FontWeight.w700);
  final mulish20 = _mulishStyle.copyWith(fontSize: 20);
  late final mulish20Bold = mulish20.copyWith(fontWeight: FontWeight.w700);
  final mulish18 = _mulishStyle.copyWith(fontSize: 18);
  late final mulish18Bold = mulish18.copyWith(fontWeight: FontWeight.w700);
  final mulish17 = _mulishStyle.copyWith(fontSize: 17);
  late final mulish17Bold = mulish17.copyWith(fontWeight: FontWeight.w700);
  final mulish16 = _mulishStyle.copyWith(fontSize: 16);
  late final mulish16Bold = mulish16.copyWith(fontWeight: FontWeight.w700);
  late final mulish16ExtraBold = mulish16.copyWith(fontWeight: FontWeight.w800);
  final mulish15 = _mulishStyle.copyWith(fontSize: 15);
  late final mulish15Bold = mulish15.copyWith(fontWeight: FontWeight.w700);
  late final mulish15Medium = mulish15.copyWith(fontWeight: FontWeight.w500);
  final mulish14 = _mulishStyle.copyWith(fontSize: 14);
  late final mulish14Semi = mulish14.copyWith(fontWeight: FontWeight.w600);
  late final mulish14Bold = mulish14.copyWith(fontWeight: FontWeight.w700);
}

class AppColors {
  AppColors._();

  static AppColors? _instance;

  factory AppColors.instance() {
    return _instance ??= AppColors._();
  }

  final white = const Color(0xFFFFFFFF);
  final whiteBg = const Color(0xFFF7F7FC);
  final black = const Color(0xFF000000);
  final black1 = const Color(0xFF020202);
  final blue = const Color(0xFF4F75FB);
  final blue1 = const Color(0xFF002DE3);
  final grey = const Color(0xFFE2E4EE);
  final grey1 = const Color(0xFF414141);
  final grey2 = const Color(0xFF9D9D9D);
  final grey4 = const Color(0xFFBDB7B7);
  final grey6 = const Color(0xFFA1A1A1);
  final grey8 = const Color(0xFFD9D9D9);
  final grey9 = const Color(0xFF979696);
  final green = const Color(0xFF6BAA64);
  final green1 = const Color(0xFF79A86B);
  final lightGreen = const Color(0xFF60BE79);
  final lightGreen1 = const Color(0xFFB4F8B3);
  final red = const Color(0xFFE30036);
  final red1 = const Color(0xFFF01F1F);
  final red2 = const Color(0xFFFF5B51);
}
