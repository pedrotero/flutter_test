import 'package:flutter/material.dart';
import 'package:restaurant_tour/typography.dart';

List<Widget> isOpenLabel(bool isOpen) {
  return isOpen
      ? ([
          const Text(
            "Open Now ",
            style: AppTextStyles.openRegularItalic,
          ),
          const Icon(
            Icons.circle,
            color: Color(0xFF5CD313),
            size: 8,
          ),
        ])
      : ([
          const Text(
            "Closed ",
            style: AppTextStyles.openRegularItalic,
          ),
          const Icon(
            Icons.circle,
            color: Color(0xFFEA5E5E),
            size: 8,
          ),
        ]);
}
