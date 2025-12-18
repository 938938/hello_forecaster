import 'package:flutter/material.dart';

Future<String?> showTextEditModal({
  required BuildContext context,
  required String title,
  required String initialValue,
}) {
  final controller = TextEditingController(text: initialValue);

  return showModalBottomSheet<String>(
    context: context,
    isScrollControlled: true,
    builder: (_) {
      return Padding(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom + 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title, style: const TextStyle(fontSize: 18)),
            TextField(controller: controller),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, controller.text);
              },
              child: const Text('확인'),
            ),
          ],
        ),
      );
    },
  );
}
