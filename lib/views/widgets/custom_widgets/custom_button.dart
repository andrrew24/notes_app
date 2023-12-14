import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

import '../../../constants/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    this.isLoading = false,
    required this.text,
  });

  final void Function() onPressed;
  final bool isLoading;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
            decoration: const BoxDecoration(
              color: kprimaryColor,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Center(
                child: isLoading
                    ? const SizedBox(
                        height: 25,
                        width: 25,
                        child: LoadingIndicator(
                            indicatorType: Indicator.circleStrokeSpin))
                    : Text(
                        text,
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ))),
      ),
    );
  }
}
