import 'package:flutter/material.dart';
import 'package:sv11_12_loading/src/loading_widght.dart';

class PopupLoading {
  static Future<void> show(BuildContext context, {String? message}) async {
    showDialog(
      context: context,
      builder: (context) => LoadingWidget(message: message),
    );
  }
}
