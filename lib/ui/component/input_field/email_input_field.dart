part of './input_field.dart';

class EmailInputField extends StatelessWidget {
  const EmailInputField({
    super.key,
    required this.controller,
    this.readOnly = false,
  });

  final TextEditingController controller;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      inputFormatters: [],
      autovalidateMode: AutovalidateMode.onUserInteraction,
      readOnly: readOnly,
      controller: controller,
      decoration: const InputDecoration(
        hintText: "Email Address",
        prefixIcon: SvgIcon(AuthIcons.email),
      ),
    );
  }
}
