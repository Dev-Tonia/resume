import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {Key? key,
      this.actionsIcon,
      this.title = '',
      this.leadingIcon,
      this.leaddingOnTap,
      this.acationOnTap})
      : super(key: key);
  final IconData? actionsIcon;
  final String title;
  final IconData? leadingIcon;
  final Function()? leaddingOnTap;
  final Function()? acationOnTap;

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xffF0BB31),
      elevation: 0.0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 50),
        child: GestureDetector(
          onTap: leaddingOnTap,
          child: Icon(
            leadingIcon,
            color: Colors.white,
          ),
        ),
      ),
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(fontSize: 15),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 50),
          child: GestureDetector(
            onTap: acationOnTap,
            child: Icon(
              actionsIcon,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
