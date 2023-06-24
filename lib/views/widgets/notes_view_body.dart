import 'package:flutter/material.dart';

import 'app_bar.dart';

class CustomNotesViewBody extends StatelessWidget {
  const CustomNotesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [CustomAppBar()],
          ),
        ),
      ),
    );
  }
}
