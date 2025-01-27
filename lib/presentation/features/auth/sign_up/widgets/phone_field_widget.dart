// import 'package:countries_utils/models/country.dart';
import 'package:flutter/material.dart';

class PhoneField extends StatefulWidget {
  const PhoneField({
    required this.codeChanged,
    required this.phoneChanged,
    required this.phoneCountryCode,
    // required this.countries,
    required this.phoneError,
    super.key,
  });

  final Function(String value) codeChanged;
  final String phoneCountryCode;
  final String? phoneError;
  final Function(String value) phoneChanged;
  // final List<Country> countries;

  @override
  State<PhoneField> createState() => _PhoneFieldState();
}

class _PhoneFieldState extends State<PhoneField> {
  bool isCountriesCodeOpen = false;

  late final TextEditingController phone;
  late final TextEditingController searchPhoneCode;
  // late List<Country> searchedCounties;

  @override
  void initState() {
    super.initState();
    phone = TextEditingController();
    searchPhoneCode = TextEditingController();
    // searchedCounties = widget.countries;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
                isCountriesCodeOpen = !isCountriesCodeOpen;
                setState(() {});
              },
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Text('+${widget.phoneCountryCode}'),
                  Icon(isCountriesCodeOpen ? Icons.expand_less : Icons.expand_more, size: 30),
                ],
              ),
            ),
            // if (isCountriesCodeOpen)
            //   Flexible(
            //     child: TextField(
            //       controller: searchPhoneCode,
            //       decoration: const InputDecoration(
            //         hintText: 'Search',
            //       ),
            //       onChanged: (search) {
            //         searchedCounties = search.trim().isEmpty
            //             ? widget.countries
            //             : widget.countries
            //                 .where((country) => (country.name ?? '').toLowerCase().contains(search.toLowerCase()))
            //                 .toList();
            //         setState(() {});
            //       },
            //     ),
            //   )
            // else
            //   Flexible(
            //     child: TextField(
            //       decoration: InputDecoration(
            //         hintText: 'Phone',
            //         errorText: widget.phoneError,
            //         counterText: '',
            //       ),
            //       controller: phone,
            //       maxLength: 12,
            //       inputFormatters: [
            //         FilteringTextInputFormatter.digitsOnly,
            //       ],
            //       onChanged: (s) => widget.phoneChanged(s),
            //       keyboardType: TextInputType.phone,
            //     ),
            //   ),
          ],
        ),
        // Visibility(
        //   visible: isCountriesCodeOpen,
        //   child: Container(
        //     height: MediaQuery.of(context).size.height / 3,
        //     padding: const EdgeInsets.only(top: 12),
        //     child: DropDownWidget(
        //       value: searchedCounties
        //               .firstWhereOrNull(
        //                 (e) => e.callingCodes?.contains(widget.phoneCountryCode) ?? false,
        //               )
        //               ?.name ??
        //           '',
        //       values: searchedCounties.map((e) => e.name ?? '').toList(),
        //       onTap: (v) {
        //         FocusManager.instance.primaryFocus?.unfocus();
        //         final code =
        //             searchedCounties.where((element) => element.name == v).first.callingCodes?.firstOrNull ?? '';
        //         widget.codeChanged(code);
        //         isCountriesCodeOpen = !isCountriesCodeOpen;
        //         setState(() {});
        //       },
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
