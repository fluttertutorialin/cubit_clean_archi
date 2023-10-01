import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../presentation/cubits/theme/theme_cubits.dart';

class ThemeDetector {
  const ThemeDetector();

  static void init(BuildContext context) {
    try {
      _listen(context);
      View.of(context).platformDispatcher.onPlatformBrightnessChanged = () {
        _listen(context);
      };
    } catch (e) {
      return;
    }
  }

  static void _listen(context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    BlocProvider.of<ThemeCubit>(context).setTheme(
        themeMode: brightness == Brightness.dark
            ? ThemeMode.dark
            : ThemeMode.light);
  }
}
