import 'package:adaptive_layout/adaptive_layout.dart';
import 'package:connect_app/app/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AuthToolbar extends StatelessWidget {
  const AuthToolbar({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final layoutType = AdaptiveLayout.layoutTypeOf(context);
    final ThemeData(:colorScheme, :textTheme) = Theme.of(context);
    final effectiveTextColor = layoutType < AdaptiveLayoutType.expanded ? colorScheme.onPrimary : null;
    final effectiveBackgroundColor = layoutType < AdaptiveLayoutType.expanded ? colorScheme.primary : null;

    return SliverAppBar(
      backgroundColor: effectiveBackgroundColor,
      pinned: true,
      expandedHeight: 180,
      flexibleSpace: Padding(
        padding: const EdgeInsets.all(Spacing.normal),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: textTheme.headlineMedium?.copyWith(color: effectiveTextColor, fontWeight: FontWeight.w600),
            ),
            const Gap(Spacing.xSmall),
            Text(
              description,
              style: textTheme.titleMedium?.copyWith(color: effectiveTextColor, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
