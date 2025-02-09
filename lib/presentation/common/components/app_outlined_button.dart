import 'package:chat_app/core/utils/extensions/context_extensions.dart';
import 'package:chat_app/presentation/common/components/loader.dart';
import 'package:flutter/material.dart';

class AppOutlinedButton extends StatelessWidget {
  final Widget child;
  final bool loading;
  final bool isContentCentered;
  final EdgeInsetsGeometry padding;
  final Color? color;
  final Color? borderColor;
  final Function()? onTap;

  AppOutlinedButton.text({
    super.key,
    required String title,
    this.loading = false,
    TextStyle? style,
    this.color,
    this.borderColor,
    this.isContentCentered = false,
    this.padding = const EdgeInsets.all(10),
    this.onTap,
  }) : child = Text(title, style: style);

  const AppOutlinedButton.widget({
    super.key,
    required this.child,
    this.loading = false,
    this.color,
    this.borderColor,
    this.isContentCentered = false,
    this.padding = const EdgeInsets.all(10),
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final content = Padding(padding: padding, child: loading ? const AppLoader() : child);
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: borderColor ?? context.colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: Material(
          borderRadius: BorderRadius.circular(8),
          color: onTap == null ? context.colors.grey : color,
          child: InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: onTap,
            child: isContentCentered ? Center(child: content) : content,
          ),
        ),
      ),
    );
  }
}
