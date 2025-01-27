part of '../theme.dart';

const inter = 'Inter';
const mulish = 'Mulish';
const paytoneOne = 'PaytoneOne';

const _interStyle = TextStyle(
  fontFamily: inter,
  fontWeight: FontWeight.w400,
  color: AppColors.black,
);

const _mulishStyle = TextStyle(
  fontFamily: mulish,
  fontWeight: FontWeight.w400,
  color: AppColors.black,
);

const _paytoneOneStyle = TextStyle(
  fontFamily: paytoneOne,
  color: AppColors.black,
);

final inter20 = _interStyle.copyWith(fontSize: 20);
final inter20Bold = inter20.copyWith(fontWeight: FontWeight.w700);
final inter18 = _interStyle.copyWith(fontSize: 18);
final inter18Bold = inter18.copyWith(fontWeight: FontWeight.w700);
final inter16 = _interStyle.copyWith(fontSize: 16);
final inter16Bold = inter16.copyWith(fontWeight: FontWeight.w700);
final inter14 = _interStyle.copyWith(fontSize: 14);
final inter14Bold = inter14.copyWith(fontWeight: FontWeight.w700);

final paytone38 = _paytoneOneStyle.copyWith(fontSize: 38);
final paytone24 = _paytoneOneStyle.copyWith(fontSize: 24);
final paytone18 = _paytoneOneStyle.copyWith(fontSize: 18);
final paytone16 = _paytoneOneStyle.copyWith(fontSize: 16);
final paytone14 = _paytoneOneStyle.copyWith(fontSize: 14);

final mulish26 = _mulishStyle.copyWith(fontSize: 26);
final mulish26Bold = mulish26.copyWith(fontWeight: FontWeight.w700);
final mulish22 = _mulishStyle.copyWith(fontSize: 20);
final mulish22Bold = mulish22.copyWith(fontWeight: FontWeight.w700);
final mulish20 = _mulishStyle.copyWith(fontSize: 20);
final mulish20Bold = mulish20.copyWith(fontWeight: FontWeight.w700);
final mulish18 = _mulishStyle.copyWith(fontSize: 18);
final mulish18Bold = mulish18.copyWith(fontWeight: FontWeight.w700);
final mulish17 = _mulishStyle.copyWith(fontSize: 17);
final mulish17Bold = mulish17.copyWith(fontWeight: FontWeight.w700);
final mulish16 = _mulishStyle.copyWith(fontSize: 16);
final mulish16Bold = mulish16.copyWith(fontWeight: FontWeight.w700);
final mulish16ExtraBold = mulish16.copyWith(fontWeight: FontWeight.w800);
final mulish15 = _mulishStyle.copyWith(fontSize: 15);
final mulish15Bold = mulish15.copyWith(fontWeight: FontWeight.w700);
final mulish15Medium = mulish15.copyWith(fontWeight: FontWeight.w500);
final mulish14 = _mulishStyle.copyWith(fontSize: 14);
final mulish14Semi = mulish14.copyWith(fontWeight: FontWeight.w600);
final mulish14Bold = mulish14.copyWith(fontWeight: FontWeight.w700);
final mulish13 = _mulishStyle.copyWith(fontSize: 13);
final mulish13Semi = mulish13.copyWith(fontWeight: FontWeight.w600);
final mulish13Bold = mulish13.copyWith(fontWeight: FontWeight.w700);
final mulish12 = _mulishStyle.copyWith(fontSize: 12);
final mulish12Bold = mulish12.copyWith(fontWeight: FontWeight.w700);

abstract class AppColors {
  static const white = Colors.white;
  static const whiteBg = Color(0xFFF7F7FC);
  static const black = Colors.black;
  static const blue = Color(0xFF4F75FB);
  static const black1 = Color(0xFF020202);
  static const blue1 = Color(0xFF002DE3);
  static const yellow = Color(0xFFFFE58B);
  static const yellow1 = Color(0xFFFFD793);
  static const orange = Color(0xFFFB9E00);
  static const grey = Color(0xFFE2E4EE);
  static const grey1 = Color(0xFF414141);
  static const grey2 = Color(0xFF9D9D9D);
  static const grey3 = Color(0xFF9A9A9A);
  static const grey4 = Color(0xFFBDB7B7);
  static const grey5 = Color(0xFF7D7979);
  static const grey6 = Color(0xFFA1A1A1);
  static const grey7 = Color(0xFF363434);
  static const grey8 = Color(0xFFD9D9D9);
  static const grey9 = Color(0xFF979696);
  static const grey10 = Color(0xFF837D7D);
  static const grey11 = Color(0xFF737272);
  static const grey12 = Color(0xFF959292);
  static const grey13 = Color(0xFF6B6868);
  static const green = Color(0xFF6BAA64);
  static const green1 = Color(0xFF79A86B);
  static const green2 = Color(0xFF2AAF28);
  static const lightGreen = Color(0xFF60BE79);
  static const lightGreen1 = Color(0xFFB4F8B3);
  static const red = Color(0xFFE30036);
  static const red1 = Color(0xFFF01F1F);
  static const red2 = Color(0xFFFF5B51);
  static const pink = Color(0xFFE21B7D);
  static const pink2 = Color(0xFFFF2147);
  static const purple = Color(0xFFae0072);
  static const lightBlue = Color(0xFF00D0FB);
}
