import 'package:flutter/material.dart';
import 'package:gdg_habit_tracker_app/shared/utils/app_colors.dart';
import 'package:gdg_habit_tracker_app/shared/utils/text.dart';

class AppButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;
  final Color? backgroundColor;
  final Size? buttonSize;
  final double? textSize;
  final Color? textColor;
  final Widget? content;
  final FontWeight? fontWeight;
  final Color? borderColor;
  final double? borderWidth;
  final bool isEnabled;
  final bool isActive;

  const AppButton(
      {super.key,
      required this.onPressed,
      this.borderWidth,
      this.borderColor,
      this.text = "",
      this.isActive = true,
      this.content,
      this.backgroundColor,
      this.buttonSize,
      this.textSize,
      this.textColor,
      this.fontWeight,
      this.isEnabled = true});

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  double _scale = 1.0;

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _scale = 0.95; // Scale down effect
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _scale = 1.0; // Return to normal scale
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: () => setState(() => _scale = 1.0),
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 200),
        child: ElevatedButton(
          onPressed: widget.isEnabled ? widget.onPressed : null,
          style: ElevatedButton.styleFrom(
            side: BorderSide(
              color: widget.borderColor ??
                  const Color(0x00000000), // Set your desired border color here
              width: widget.borderWidth ?? 1, // Set the border width
            ),
            // disabledBackgroundColor: lightGrey3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            backgroundColor: widget.backgroundColor ?? lightGreen2,
            minimumSize: widget.buttonSize ?? const Size(355, 38),
          ),
          child: widget.text.isNotEmpty
              ? AppText(
                  text: widget.text,
                  color: widget.textColor ??
                      (widget.isEnabled ? whiteColor : blackColor),
                  fontSize: widget.textSize ?? 15,
                  fontWeight: widget.fontWeight ?? FontWeight.w500,
                )
              : widget.content,
        ),
      ),
    );
  }
}
