import 'package:flutter/material.dart';
import 'package:musica_player/Domain/palettes/color_palette.dart';

class SettingListTile extends StatelessWidget {
  const SettingListTile({
    Key? key,
    required this.labeltext,
    required this.icon,
    this.trailingWidget,
    this.onTap,
  }) : super(key: key);

  final String labeltext;
  final IconData icon;
  final Widget? trailingWidget;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        color: kLightBlue,
        size: 22.5,
      ),
      title: Text(
        labeltext,
        style: const TextStyle(
          fontSize: 17,
        ),
      ),
      trailing: (trailingWidget == null) ? const SizedBox() : trailingWidget,
    );
  }
}
