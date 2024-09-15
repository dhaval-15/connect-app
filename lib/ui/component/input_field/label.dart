part of './input_field.dart';

class TextFieldLabelText extends StatelessWidget {
  const TextFieldLabelText({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(label);
  }
}
