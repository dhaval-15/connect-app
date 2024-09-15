import 'package:connect_app/app/resources/resources.dart';
import 'package:connect_app/ui/component/icon.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

enum SocialAuthOptionsType { google, apple }

class SocialAuthentication extends StatelessWidget {
  const SocialAuthentication({
    super.key,
    required this.label,
    required this.onSelectAuthOption,
  });

  final String label;
  final void Function(SocialAuthOptionsType optionType) onSelectAuthOption;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            const Expanded(child: Divider()),
            const Gap(Spacing.normal),
            Text(label.toUpperCase()),
            const Gap(Spacing.normal),
            const Expanded(child: Divider()),
          ],
        ),
        const Gap(Spacing.small),
        _SocialAuthOptions(onSelectAuthOption: onSelectAuthOption)
      ],
    );
  }
}

class _SocialAuthOptions extends StatelessWidget {
  const _SocialAuthOptions({
    required this.onSelectAuthOption,
  });

  final void Function(SocialAuthOptionsType optionType) onSelectAuthOption;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _SocialLoginButtons(
          icon: AuthIcons.googleLogo,
          onPressed: () => onSelectAuthOption(SocialAuthOptionsType.google),
        ),
        const Gap(Spacing.small),
        _SocialLoginButtons(
          icon: AuthIcons.appleLogo,
          onPressed: () => onSelectAuthOption(SocialAuthOptionsType.apple),
        ),
      ],
    );
  }
}

class _SocialLoginButtons extends StatelessWidget {
  const _SocialLoginButtons({
    required this.icon,
    required this.onPressed,
  });

  final String icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        padding: const EdgeInsets.all(Spacing.medium),
      ),
      onPressed: onPressed,
      icon: SvgIcon(icon),
    );
  }
}
