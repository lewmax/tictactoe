extension StringExtensions on String {
  String? get nullIfEmpty => isEmpty ? null : this;

  String capitalize() {
    if (trim().isNotEmpty) {
      final words =
          removeExtraSpaces().split(' ').map((e) => e[0].toUpperCase() + (e.length > 1 ? e.substring(1) : '')).toList();
      return words.join(' ');
    }
    return this;
  }

  String removeExtraSpaces() {
    if (trim().isEmpty) return '';
    return trim().replaceAll(RegExp(' +'), ' ');
  }
}
