part of './input_field.dart';

class PasswordInputField extends StatefulWidget {
  const PasswordInputField({
    super.key,
    required this.controller,
    required this.hintText,
    this.readOnly = false,
  });

  final TextEditingController controller;
  final bool readOnly;
  final String hintText;

  @override
  State<PasswordInputField> createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  final ValueNotifier<bool> _passwordVisible = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _passwordVisible,
      builder: (context, value, child) {
        return TextFormField(
          obscureText: !_passwordVisible.value,
          keyboardType: TextInputType.text,
          inputFormatters: [],
          autovalidateMode: AutovalidateMode.onUserInteraction,
          readOnly: widget.readOnly,
          controller: widget.controller,
          decoration: InputDecoration(
            hintText: widget.hintText,
            prefixIcon: const SvgIcon(AuthIcons.password),
            suffixIcon: IconButton(
              onPressed: () => _passwordVisible.value = !_passwordVisible.value,
              icon: SvgIcon(value ? AuthIcons.eyeOpened : AuthIcons.eyeClosed),
            ),
          ),
        );
      },
    );
  }
}
