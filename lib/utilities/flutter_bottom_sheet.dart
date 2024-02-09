import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:musify/extensions/colorScheme.dart';
import 'package:musify/extensions/screen_size.dart';

void showCustomBottomSheet(BuildContext context, Widget content) {
  final size = context.screenSize;
  showBottomSheet(
    context: context,
    builder: (context) => Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        ),
      ),
      width: size.width - 15,
      height: size.height / 2.14,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: size.height * 0.012,
            ),
            child: IconButton(
              icon: Icon(
                FluentIcons.arrow_between_down_24_filled,
                color: context.colorScheme.primary,
                size: 20,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: content,
            ),
          ),
        ],
      ),
    ),
  );
}
