import 'package:flutter/material.dart';

class PasswordTextfield extends StatefulWidget {
  const PasswordTextfield({
    super.key,
    this.enabled = true,
    this.onChanged,
    this.passordError,
    this.hint,
  });

  final bool enabled;
  final String? hint;
  final String? passordError;
  final Function(String value)? onChanged;

  @override
  State<PasswordTextfield> createState() => _PasswordTextfieldState();
}

class _PasswordTextfieldState extends State<PasswordTextfield> {
  bool showPass = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: widget.enabled,
      obscureText: !showPass,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        hintText: widget.hint,
        labelText: widget.hint,
        errorText: widget.passordError,
        suffixIcon: IconButton(
          padding: EdgeInsets.zero,
          icon: Icon(showPass ? Icons.visibility : Icons.visibility_off, color: Colors.grey),
          onPressed: () => setState(() => showPass = !showPass),
        ),
      ),
    );
  }
}
