import 'package:flutter/material.dart';
import 'package:sonix/core/common/widgets/svg_widget.dart';

class CustomBottomBar extends StatelessWidget {
  /// A bottom bar that faithfully follows the design by Aurélien Salomon
  ///
  /// https://dribbble.com/shots/5925052-Google-Bottom-Bar-Navigation-Pattern/
  CustomBottomBar({
    Key? key,
    required this.items,
    this.backgroundColor,
    this.currentIndex = 0,
    this.onTap,
    this.selectedItemColor,
    this.unselectedItemColor,
    this.selectedColorOpacity,
    this.itemShape = const StadiumBorder(),
    this.margin = const EdgeInsets.all(10),
    this.itemPadding = const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
    this.duration = const Duration(milliseconds: 500),
    this.curve = Curves.easeOutQuint,
  }) : super(key: key);

  final List<SalomonBottomBarItem> items;
  final int currentIndex;
  final Function(int)? onTap;
  final Color? backgroundColor;
  final Color? selectedItemColor;
  final Color? unselectedItemColor;
  final double? selectedColorOpacity;
  final ShapeBorder itemShape;
  final EdgeInsets margin;
  final EdgeInsets itemPadding;
  final Duration duration;
  final Curve curve;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bottomInset = MediaQuery.paddingOf(context).bottom;
    final effectiveMargin = margin.copyWith(
      bottom: margin.bottom + bottomInset,
    );

    return ColoredBox(
      color: Colors.transparent,
      child: SafeArea(
        top: false,
        minimum: margin,
        child: Row(
          /// Using a different alignment when there are 2 items or less
          /// so it behaves the same as BottomNavigationBar.
          mainAxisAlignment:
              items.length <= 2
                  ? MainAxisAlignment.spaceEvenly
                  : MainAxisAlignment.spaceBetween,
          children: [
            for (final item in items)
              TweenAnimationBuilder<double>(
                tween: Tween(
                  end: items.indexOf(item) == currentIndex ? 1.0 : 0.0,
                ),
                curve: curve,
                duration: duration,
                builder: (context, t, _) {
                  final _selectedColor = theme.primaryColor;
                  final _unselectedColor = theme.colorScheme.secondary;
                  return Material(
                    color: Color.lerp(Colors.transparent, _selectedColor, t),
                    shape: itemShape,
                    child: InkResponse(
                      onTap: () => onTap?.call(items.indexOf(item)),
                      containedInkWell: true,
                      highlightShape: BoxShape.rectangle,
                      radius: 28,
                      splashColor: _selectedColor.withValues(alpha: 0.3),
                      hoverColor: _selectedColor.withValues(alpha: 0.1),
                      highlightColor: _selectedColor.withValues(alpha: 0.1),
                      focusColor: _selectedColor.withValues(alpha: 0.1),
                      customBorder: itemShape,
                      child: Padding(
                        padding:
                            itemPadding -
                            (Directionality.of(context) == TextDirection.ltr
                                ? EdgeInsets.only(right: itemPadding.right * t)
                                : EdgeInsets.only(left: itemPadding.left * t)),
                        child: Row(
                          children: [
                            SvgWidget(
                              ic:
                                  items.indexOf(item) == currentIndex
                                      ? item.activeIcon ?? item.icon
                                      : item.icon,
                              color: Color.lerp(
                                _unselectedColor,
                                Colors.black,
                                t,
                              ),
                              height: 24,
                              width: 24,
                            ),
                            ClipRect(
                              clipBehavior: Clip.antiAlias,
                              child: SizedBox(
                                height: 20,
                                child: Align(
                                  alignment: Alignment(-0.2, 0.0),
                                  widthFactor: t,
                                  child: Padding(
                                    padding:
                                        Directionality.of(context) ==
                                                TextDirection.ltr
                                            ? EdgeInsets.only(
                                              left: itemPadding.left / 2,
                                              right: itemPadding.right,
                                            )
                                            : EdgeInsets.only(
                                              left: itemPadding.left,
                                              right: itemPadding.right / 2,
                                            ),
                                    child: DefaultTextStyle(
                                      style: TextStyle(
                                        color: Color.lerp(
                                          _unselectedColor,
                                          Colors.black,
                                          t,
                                        ),
                                        fontWeight: FontWeight.w700,
                                      ),
                                      child: item.title,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}

/// A tab to display in a [SalomonBottomBar]
class SalomonBottomBarItem {
  /// An icon to display.
  final String icon;

  /// An icon to display when this tab bar is active.
  final String? activeIcon;

  /// Text to display, ie `Home`
  final Widget title;

  /// A primary color to use for this tab.
  final Color? selectedColor;

  /// The color to display when this tab is not selected.
  final Color? unselectedColor;

  SalomonBottomBarItem({
    required this.icon,
    required this.title,
    this.selectedColor,
    this.unselectedColor,
    this.activeIcon,
  });
}
