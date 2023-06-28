import 'package:flutter/material.dart';

import '../../constants/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, this.onPressed,
  });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
              backgroundColor: MaterialStateProperty.all(kprimaryColor)),
          onPressed: onPressed,
          child: const Text("ADD",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),) ),
    );
  }
}
