import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/presentation/common/navigation/app_router.dart';

class DontHaveAccountSection extends StatelessWidget {
  const DontHaveAccountSection({super.key, required this.onSignedIn});

  final Function()? onSignedIn;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("Don't have an account?"),
        InkWell(
          onTap: () => context.router.replace(SignUpRoute(onSignedIn: onSignedIn)),
          child: const Text("Sign up", style: TextStyle(fontWeight: FontWeight.w600)),
        ),
      ],
    );
  }
}
