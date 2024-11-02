import 'package:flutter/material.dart';
import 'package:gdg_habit_tracker_app/shared/utils/app_colors.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final bool isInterStyle;
  final bool isInstrumentSans;

  final bool isPoppins;
  final bool isItalic;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final StrutStyle? strutStyle;

  const AppText(
      {super.key,
      required this.text,
      this.isItalic = false,
      this.style,
      this.textAlign,
      this.textDirection,
      this.locale,
      this.softWrap,
      this.overflow,
      this.textScaleFactor,
      this.maxLines,
      this.semanticsLabel,
      this.isPoppins = false,
      this.textWidthBasis,
      this.textHeightBehavior,
      this.strutStyle,
      this.fontSize,
      this.fontWeight,
      this.isInterStyle = true,
      this.isInstrumentSans = false,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ??
          _getTextStyle(
            context,
            style: style,
            isPoppins: isPoppins,
            isInterStyle: isInterStyle,
            isInstrumentSans: isInstrumentSans,
            color: color,
            isItalic: isItalic,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      // textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      strutStyle: strutStyle,
    );
  }

  TextStyle? _getTextStyle(
    BuildContext context, {
    TextStyle? style,
    bool isPoppins = false,
    bool isInterStyle = false,
    bool isInstrumentSans = false,
    Color? color,
    bool isItalic = false,
    double? fontSize,
    FontWeight? fontWeight,
  }) {
    if (style != null) return style;

    TextStyle? baseStyle;

    if (isPoppins) {
      baseStyle = Theme.of(context).textTheme.displaySmall;
    } else if (isInstrumentSans) {
      baseStyle = Theme.of(context).textTheme.displayLarge;
    } else if (isInterStyle) {
      baseStyle = Theme.of(context).textTheme.displayMedium;
    }

    if (baseStyle != null) {
      return baseStyle.copyWith(
        overflow: TextOverflow.clip, // Allows text to wrap naturally,
        color: color,
        fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
        fontSize: fontSize ?? 10,
        fontWeight: fontWeight ?? FontWeight.w400,
      );
    }

    return null; // Return null if no style is applicable
  }
}

class LeadingText extends StatelessWidget {
  final String text;
  const LeadingText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 27, fontWeight: FontWeight.bold, color: Colors.black),
    );
  }
}

class TrailingText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  const TrailingText(
      {super.key, required this.text, this.color, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            text,
            style: TextStyle(
                fontSize: fontSize ?? 17,
                fontWeight: FontWeight.bold,
                color: color ?? lightGrey),
          ),
        ),
      ],
    );
  }
}

class ClickableText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final Widget? content;
  final Color? color;
  final VoidCallback? onTap;
  final bool centered;

  const ClickableText({
    super.key,
    this.content,
    this.color,
    this.text = "",
    this.style,
    this.onTap,
    this.centered = false, // Default value is false
  });

  @override
  Widget build(BuildContext context) {
    Widget textWidget = content ??
        Text(
          text,
          style: style ?? TextStyle(color: color ?? orangeColor),
        );

    return GestureDetector(
      onTap: onTap,
      child: centered ? Center(child: textWidget) : textWidget,
    );
  }
}

class CenteredText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final VoidCallback? onTap;

  const CenteredText({
    super.key,
    required this.text,
    this.style,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: style,
        ),
      ),
    );
  }
}
