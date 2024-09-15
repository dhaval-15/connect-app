part of '../register.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthScaffold(
      title: "Create an Account.",
      description: "Let's sign in to your account and get started",
      content: _RegisterForm(),
    );
  }
}

class _RegisterForm extends StatefulWidget {
  const _RegisterForm();

  @override
  State<_RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<_RegisterForm> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const TextFieldLabelText(label: "Please Enter Your Full Name"),
        const Gap(Spacing.small),
        TextFormField(
          decoration: const InputDecoration(
            hintText: "Full Name",
            prefixIcon: SvgIcon(AuthIcons.user),
          ),
        ),
        const Gap(Spacing.medium),
        const TextFieldLabelText(label: "Please Enter Your Email Address"),
        const Gap(Spacing.small),
        EmailInputField(
          controller: _emailController,
        ),
        const Gap(Spacing.medium),
        const TextFieldLabelText(label: "Create Your Password"),
        const Gap(Spacing.small),
        PasswordInputField(controller: _passwordController, hintText: "Password"),
        const Gap(Spacing.medium),
        const TextFieldLabelText(label: "Confirm Your Password"),
        const Gap(Spacing.small),
        PasswordInputField(controller: _confirmPasswordController, hintText: "Confirm Password"),
        const Gap(Spacing.normal),
        SizedBox(
          width: double.maxFinite,
          child: PrimaryButton(label: "Register", onPressed: () {}),
        )
      ],
    );
  }
}
