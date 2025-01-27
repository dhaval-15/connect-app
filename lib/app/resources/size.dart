part of 'resources.dart';

abstract interface class Spacing {
  static const double none = 0;
  static const double xSmall = 4;
  static const double small = 8;
  static const double medium = 12;
  static const double normal = 16;
  static const double large = 20;
  static const double xLarge = 24;
  static const double xxLarge = 32;
  static const double xxxLarge = 36;
}

abstract interface class RadiusValues {
  static const Radius none = Radius.circular(0);
  static const Radius xSmall = Radius.circular(4);
  static const Radius small = Radius.circular(8);
  static const Radius medium = Radius.circular(12);
  static const Radius normal = Radius.circular(16);
  static const Radius large = Radius.circular(20);
  static const Radius xLarge = Radius.circular(24);
  static const Radius xxLarge = Radius.circular(32);
}

abstract interface class ShapeBorderRadius {
  static const BorderRadius none = BorderRadius.all(RadiusValues.none);
  static const BorderRadius xSmall = BorderRadius.all(RadiusValues.xSmall);
  static const BorderRadius small = BorderRadius.all(RadiusValues.small);
  static const BorderRadius medium = BorderRadius.all(RadiusValues.medium);
  static const BorderRadius normal = BorderRadius.all(RadiusValues.normal);
  static const BorderRadius large = BorderRadius.all(RadiusValues.large);
  static const BorderRadius xLarge = BorderRadius.all(RadiusValues.xLarge);
  static const BorderRadius xxLarge = BorderRadius.all(RadiusValues.xxLarge);
}

abstract interface class LayoutConstants {
  static const BoxConstraints modalDialog = BoxConstraints(maxWidth: 576, maxHeight: 640);
  static const BoxConstraints authLayout = BoxConstraints(maxWidth: 1200,maxHeight: 600);
  static const BoxConstraints minLoadingArea = BoxConstraints(minHeight: 120, minWidth: 120, maxHeight: 120);
  static const BoxConstraints formField = BoxConstraints(maxWidth: 600);

  static const BoxConstraints bottomNavigationBar = BoxConstraints.tightFor(height: 64, width: 576);
  static const BoxConstraints textField = BoxConstraints(maxWidth: 576);
  static const Size buttonSize = Size.fromWidth(576);
  static const double snackbar = 576;
  static const double stepper = 320;

  static const BoxConstraints forms = BoxConstraints(maxWidth: 576);
  static const BoxConstraints menuList = BoxConstraints(maxWidth: 576);

  static const double gridItemMaxCrossAxisExtend = 576;
  static const double gridItemSpacing = 16;
}
