import 'package:chat_app/presentation/common/components/loader.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String title;
  final bool loading;
  final bool isContentCentered;
  final EdgeInsetsGeometry padding;
  final TextStyle? style;
  final Color? color;
  final Function()? onTap;

  const AppButton({
    super.key,
    required this.title,
    this.loading = false,
    this.style,
    this.color,
    this.isContentCentered = false,
    this.padding = const EdgeInsets.all(16),
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final content = Padding(padding: padding, child: loading ? const AppLoader() : Text(title, style: style));
    return Material(
      borderRadius: BorderRadius.circular(8),
      color: onTap == null ? Colors.grey.shade400 : color,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: onTap,
        child: isContentCentered ? Center(child: content) : content,
      ),
    );
  }
}
