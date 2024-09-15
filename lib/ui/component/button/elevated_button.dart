part of './button.dart';

enum _ElevatedButtonType { normal, outlined, icon }

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
  })  : _buttonType = _ElevatedButtonType.normal,
        _icon = null;

  const PrimaryButton.outlined({
    super.key,
    required this.label,
    required this.onPressed,
  })  : _buttonType = _ElevatedButtonType.outlined,
        _icon = null;

  const PrimaryButton.icon({
    super.key,
    required this.label,
    required Widget icon,
    required this.onPressed,
  })  : _buttonType = _ElevatedButtonType.icon,
        _icon = icon;

  final String label;
  final VoidCallback onPressed;
  final _ElevatedButtonType _buttonType;
  final Widget? _icon;

  @override
  Widget build(BuildContext context) {
    return _CommonElevatedButton(
      buttonType: _buttonType,
      onPressed: onPressed,
      label: label,
      icon: _icon,
    );
  }
}

class _CommonElevatedButton extends StatelessWidget {
  const _CommonElevatedButton({
    required this.buttonType,
    required this.onPressed,
    required this.label,
    this.icon,
  });

  final _ElevatedButtonType buttonType;
  final VoidCallback onPressed;
  final String label;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    final child = Text(label);
    return switch (buttonType) {
      _ElevatedButtonType.normal => ElevatedButton(
          onPressed: onPressed,
          child: child,
        ),
      _ElevatedButtonType.outlined => OutlinedButton(
          onPressed: onPressed,
          child: child,
        ),
      _ElevatedButtonType.icon => ElevatedButton.icon(
          onPressed: onPressed,
          label: child,
          icon: icon,
        ),
    };
  }
}
