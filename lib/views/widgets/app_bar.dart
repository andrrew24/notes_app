import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "NOTES",
          style: TextStyle(fontSize: 25),
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(.07),
              borderRadius: const BorderRadius.all(Radius.circular(16))),
          child: const Center(
            child: IconButton(
              onPressed: null,
              icon: Icon(Icons.search),
              iconSize: 35,
            ),
          ),
        )
      ],
    );
  }
}
