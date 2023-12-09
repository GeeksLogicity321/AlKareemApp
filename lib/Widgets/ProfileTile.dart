import 'package:flutter/material.dart';

class ProfileTiles extends StatelessWidget {
    final IconData? icon;
  final String title;
  final VoidCallback ontap;
  const ProfileTiles(
      {super.key, this.icon, required this.ontap, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.1),
      child: InkWell(
        onTap: () => ontap(),
        child: ListTile(
         tileColor: Colors.transparent,
          leading: Icon(
            icon,
            color: Colors.black,
          ),
          title: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.black),
          ),
            trailing: Icon(Icons.arrow_forward_ios_sharp),
        ),
      ),
    );
  }
}