import 'package:adaptive_layout/adaptive_layout.dart';
import 'package:connect_app/app/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final layoutType = AdaptiveLayout.layoutTypeOf(context);
    final outerSpacing = AdaptiveLayout.marginOf(context);

    Widget widget;
    if (layoutType > AdaptiveLayoutType.medium) {
      widget = Material(
        child: Padding(
          padding: EdgeInsets.all(outerSpacing),
          child: Center(
            child: ConstrainedBox(
              constraints: LayoutConstants.authLayout,
              child: Card(
                elevation: 2.0,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: const RoundedRectangleBorder(borderRadius: ShapeBorderRadius.normal),
                child: Row(
                  children: [
                    const Expanded(child: _BrandingSection()),
                    Expanded(child: child),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    } else {
      widget = child;
    }

    return widget;
  }
}

class _BrandingSection extends StatelessWidget {
  const _BrandingSection();

  @override
  Widget build(BuildContext context) {
    final ThemeData(:colorScheme, :textTheme) = Theme.of(context);

    return ColoredBox(
      color: colorScheme.primary.withOpacity(0.3),
      child: Padding(
        padding: const EdgeInsets.all(Spacing.normal),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  text: "Welcome to ",
                  style: textTheme.displaySmall,
                  children: [
                    TextSpan(text: "Connect!", style: TextStyle(color: colorScheme.primary)),
                  ],
                ),
              ),
              const Gap(Spacing.normal),
              Text(
                "Lorem ipsum dolor sit amet",
                style: textTheme.titleMedium,
              ),
              const Gap(Spacing.small),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
                textAlign: TextAlign.center,
                style: textTheme.titleSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
