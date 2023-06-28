

import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget {
 const CustomAppBar({
    super.key,
    required this.appBarTitle,
    required this.icon
  });

 final String appBarTitle;
 final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          appBarTitle,
          style: const TextStyle(fontFamily: "poppins",fontSize: 30),
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
