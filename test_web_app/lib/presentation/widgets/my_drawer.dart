import 'package:flutter/material.dart';
import 'package:test_web_app/presentation/widgets/nav_bar/nav_item.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // header
            const DrawerHeader(
                child: Center(
                    child: Text(
              "Extelvo Ent.",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
            ))),

            // nav items
            // _DrawerItem(
            //   "Episodes",
            //   icon: Icons.playlist_play,
            //   onPressed: () {
            //     print("Episodes");
            //   },
            // ),
            _DrawerItem(
              "About",
              icon: Icons.info_outline_rounded,
              onPressed: () {
                print("About Tapped");
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _DrawerItem extends StatelessWidget {
  const _DrawerItem(this.text, {super.key, this.onPressed, required this.icon});

  final void Function()? onPressed;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: onPressed,
        leading: Icon(icon),
        title: NavItem(text));
  }
}
