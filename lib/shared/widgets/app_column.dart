import 'package:flutter/material.dart';

class AppColumn extends StatefulWidget {
  final bool isScrollable;
  final bool resizeToAvoidBottomInset;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;
  final bool isLoading;
  final bool useBounceAnimation; // New parameter to control animation
  final EdgeInsetsGeometry? padding;
  final List<Widget> children;
  final Widget? bottomNavBar;
  final Widget? drawer;

  const AppColumn(
      {super.key,
      this.isScrollable = false,
      required this.children,
      this.isLoading = false,
      this.useBounceAnimation = false, // Default value is true
      this.resizeToAvoidBottomInset = false,
      this.crossAxisAlignment = CrossAxisAlignment.start,
      this.mainAxisAlignment = MainAxisAlignment.start,
      this.padding,
      this.drawer,
      this.bottomNavBar});

  @override
  State<AppColumn> createState() => _AppColumnState();
}

class _AppColumnState extends State<AppColumn> {
  void removeFocus(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    // Decide the main content widget based on scrollable property
    Widget mainContent = Column(
      crossAxisAlignment: widget.crossAxisAlignment,
      mainAxisAlignment: widget.mainAxisAlignment,
      children: widget.children,
    );

    // Wrap the entire Column with BounceInAnimation if required

    return Scaffold(
      resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
      drawer: widget.drawer,
      body: GestureDetector(
        onTap: () {
          removeFocus(context);
        },
        child: Stack(
          children: [
            // Main content
            widget.isScrollable
                ? SafeArea(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      padding: widget.padding ??
                          const EdgeInsets.symmetric(horizontal: 20)
                              .copyWith(top: 10),
                      child: mainContent,
                    ),
                  )
                : SafeArea(
                    child: Padding(
                      padding: widget.padding ??
                          const EdgeInsets.symmetric(horizontal: 20)
                              .copyWith(top: 10),
                      child: mainContent,
                    ),
                  ),

            // Loading indicator overlay
            if (widget.isLoading)
              Container(
                color:
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(0.7),
                child: const Center(
                  child: SizedBox(
                    height: 26,
                    width: 26,
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: widget.bottomNavBar,
    );
  }
}
