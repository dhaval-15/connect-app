part of '../login.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthScaffold(
      content: _LoginForm(),
      title: "Sign In To Your Account.",
      description: "Let's sign in to your account and get started",
    );
  }
}

class _LoginForm extends StatefulWidget {
  const _LoginForm();

  @override
  State<_LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<_LoginForm> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData(:colorScheme, :textTheme) = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextFieldLabelText(label: "Please Enter Your Email Address"),
        const Gap(Spacing.small),
        EmailInputField(
          key: const Key("email_input_field"),
          controller: _emailController,
        ),
        const Gap(Spacing.normal),
        const TextFieldLabelText(label: "Please Enter Your Email Password"),
        const Gap(Spacing.small),
        PasswordInputField(controller: _passwordController, hintText: "Password"),
        const Gap(Spacing.xSmall),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {},
            child: const Text("Forgot Password ?"),
          ),
        ),
        const Gap(Spacing.normal),
        SizedBox(
          width: double.maxFinite,
          child: PrimaryButton(label: "Login", onPressed: () {}),
        ),
        const Gap(Spacing.normal),
        Center(
          child: Text.rich(
            textAlign: TextAlign.center,
            TextSpan(
              text: "Don't have an account ?",
              children: [
                TextSpan(
                  text: "Register",
                  style: textTheme.labelMedium?.copyWith(color: colorScheme.primary),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      context.go("/register");
                    },
                )
              ],
            ),
          ),
        ),
        const Gap(Spacing.normal),
        SocialAuthentication(
          label: "or login with",
          onSelectAuthOption: (optionType) {
            switch (optionType) {
              case SocialAuthOptionsType.google:
              // TODO: Handle this case.
              case SocialAuthOptionsType.apple:
              // TODO: Handle this case.
            }
          },
        )
      ],
    );
  }
}
