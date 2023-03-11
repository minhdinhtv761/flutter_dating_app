import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final IconData? backIcon;
  final VoidCallback? onBackPressed;
  final Widget? title;
  final bool centerTitle;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final Color? foregroundColor;

  const CustomAppBar({
    super.key,
    this.backIcon,
    this.onBackPressed,
    this.title,
    this.centerTitle = false,
    this.actions,
    this.backgroundColor,
    this.foregroundColor,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      elevation: 0.0,
      leading: backIcon == null
          ? null
          : IconButton(
              icon: Icon(
                backIcon,
              ),
              onPressed: onBackPressed ??
                  () {
                    Get.back();
                  },
            ),
      title: title,
      centerTitle: centerTitle || backIcon != null,
      actions: actions,
    );
  }
}
