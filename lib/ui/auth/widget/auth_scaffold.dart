import 'package:connect_app/app/resources/resources.dart';
import 'package:connect_app/ui/auth/widget/auth_toolbar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AuthScaffold extends StatelessWidget {
  const AuthScaffold({
    super.key,
    required this.content,
    required this.title,
    required this.description,
  });

  final Widget content;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final ThemeData(:colorScheme, :textTheme) = Theme.of(context);

    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 520),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(Spacing.medium),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w600),
                ),
                const Gap(Spacing.xSmall),
                Text(
                  description,
                  style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500),
                ),
                const Gap(Spacing.normal),
                content
              ],
            ),
          ),
        ),
      ),
      /*body: Container(
        color: Colors.blue,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w600),
                  ),
                  const Gap(Spacing.xSmall),
                  Text(
                    description,
                    style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(padding: const EdgeInsets.all(Spacing.normal), child: content),
            )
          ],
        ),
      ),*/
    );
  }
}
