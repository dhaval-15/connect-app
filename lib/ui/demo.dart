import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {

              }, child: Text("Testsmsnsknssj")),
              ElevatedButton.icon(onPressed: () {

              }, label: Text("fdfdffdfdfdfdfdf"),
              icon: Icon(Icons.add),),
              OutlinedButton(onPressed: () {

              }, child: Text("Testsmsnsknssj")),
            ],
          ),
        ),
      ),
    );
  }
}

class TextThemeView extends StatelessWidget {
  const TextThemeView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Text("labelSmall", style: textTheme.labelSmall),
        Text("labelMedium", style: textTheme.labelMedium),
        Text("labelLarge", style: textTheme.labelLarge),
        Gap(16),
        Text("bodySmall", style: textTheme.bodySmall),
        Text("bodyMedium", style: textTheme.bodyMedium),
        Text("bodyLarge", style: textTheme.bodyLarge),
        Gap(16),
        Text("titleSmall", style: textTheme.titleSmall),
        Text("titleMedium", style: textTheme.titleMedium),
        Text("titleLarge", style: textTheme.titleLarge),
        Gap(16),
        Text("headlineSmall", style: textTheme.headlineSmall),
        Text("headlineMedium", style: textTheme.headlineMedium),
        Text("headlineLarge", style: textTheme.headlineLarge),
        Gap(16),
        Text("displaySmall", style: textTheme.displaySmall),
        Text("displayMedium", style: textTheme.displayMedium),
        Text("displayLarge", style: textTheme.displayLarge),
      ],
    );
  }
}
