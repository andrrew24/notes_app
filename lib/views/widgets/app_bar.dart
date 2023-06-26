// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget {
  CustomAppBar({
    super.key,
    required this.appBarTitle,
    required this.icon
  });

  String appBarTitle;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          appBarTitle,
          style: TextStyle(fontFamily: "poppins",fontSize: 30),
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(.07),
              borderRadius: const BorderRadius.all(Radius.circular(16))),
          child:  Center(
            child: IconButton(
              onPressed: null,
              icon: Icon(icon),
              iconSize: 35,
            ),
          ),
        )
      ],
    );
  }
}
