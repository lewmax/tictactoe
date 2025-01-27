part of '../theme.dart';

class AppLayoutStylesInherited extends InheritedWidget {
  const AppLayoutStylesInherited({super.key, required this.layoutStyles, required super.child});

  final AppLayoutStyles layoutStyles;

  static AppLayoutStyles of(BuildContext context) {
    final AppLayoutStylesInherited? result = context.dependOnInheritedWidgetOfExactType<AppLayoutStylesInherited>();
    return result!.layoutStyles;
  }

  @override
  bool updateShouldNotify(AppLayoutStylesInherited oldWidget) => layoutStyles != oldWidget.layoutStyles;
}
