import 'package:flutter/material.dart';

class AppColumn extends StatelessWidget {
  final bool isScrollable;
  final bool isLoading;
  final EdgeInsetsGeometry? padding;
  final List<Widget> children;
  const AppColumn(
      {super.key,
      this.isScrollable = false,
      required this.children,
      this.isLoading = false,
      this.padding});

  void removeFocus(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return isScrollable
        ? GestureDetector(
            onTap: () {
              removeFocus(context);
            },
            child: SafeArea(
              child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  padding: padding ??
                      const EdgeInsets.symmetric(horizontal: 20)
                          .copyWith(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: children,
                  )),
            ),
          )
        : GestureDetector(
            onTap: () {
              removeFocus(context);
            },
            child: SafeArea(
              child: Padding(
                padding: padding ??
                    const EdgeInsets.symmetric(horizontal: 20)
                        .copyWith(top: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: children),
              ),
            ),
          );
  }
}
