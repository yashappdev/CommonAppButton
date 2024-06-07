import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonAppButton extends StatefulWidget {
  const CommonAppButton({
    super.key,
    required this.buttonName,
    this.fontColor = const Color(0xFFFFFFFF),
    this.fontWeight = FontWeight.normal,
    this.fontSize = 24.0,
    this.buttonBackgroundColor = const Color(0xFF0D47AC),
    this.divideRatio = 1.8,
    this.buttonHeight = 40,
    required this.onButtonClick,
  });

  final OnClickedCallback onButtonClick;
  final String buttonName;
  final Color fontColor;
  final FontWeight fontWeight;
  final double fontSize;
  final double divideRatio;
  final double buttonHeight;
  final Color buttonBackgroundColor;

  @override
  State<CommonAppButton> createState() => _CommonAppButtonState();
}

class _CommonAppButtonState extends State<CommonAppButton> {
  @override
  Widget build(BuildContext context) {
    final widthSize = MediaQuery.of(context).size.width;
    return SizedBox(
      height: widget.buttonHeight.h,
      width: widthSize / widget.divideRatio,
      child: ElevatedButton(
          onPressed: () {
            widget.onButtonClick();
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            backgroundColor: widget.buttonBackgroundColor,
          ),
          child: Text(
            widget.buttonName,
            style: TextStyle(
              color: widget.fontColor,
              fontWeight: widget.fontWeight,
              fontSize: widget.fontSize,
            ),
          )
          // CommonText(
          //   value: widget.buttonName,
          //   maxLines: 1,
          //   overFlow: TextOverflow.ellipsis,
          //   mergeStyle:
          //   TextStyle(color:widget.colorFont, fontWeight: FontWeight.bold),
          //   defaultTextStyle: AppTextTheme.titleMedium16,
          // ),
          ),
    );
  }
}

typedef OnClickedCallback = Function();
