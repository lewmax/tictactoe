import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLoader extends StatelessWidget {
  final double width;

  const AppLoader({
    super.key,
    this.width = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width,
        height: width,
        child: CupertinoActivityIndicator(
          color: Colors.grey,
          radius: width,
        ),
      ),
    );
  }
}
