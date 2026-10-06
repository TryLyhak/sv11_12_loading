import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  final String? message;
  const LoadingWidget({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      constraints: BoxConstraints(maxWidth: 150, maxHeight: 150),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 16,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator.adaptive(),
            message == null ? SizedBox() : Text(message!),
          ],
        ),
      ),
    );
  }
}
