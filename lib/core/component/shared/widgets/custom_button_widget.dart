import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double horizontalPadding;
  final EdgeInsetsGeometry? margin;
  final double? height;
  const CustomButtonWidget({
    super.key,
    required this.text,
    this.onPressed,
    this.horizontalPadding = 20.0,
    this.margin,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      width: MediaQuery.of(context).size.width,
      margin: margin,
      height: height ?? MediaQuery.of(context).size.height * 0.05,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          // padding: EdgeInsets.symmetric(horizontal: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: Color(0xff2B637B),
        ),
        child: Text(text, style: TextStyle(fontSize: 18, color: Colors.white)),
      ),
    );
  }
}
