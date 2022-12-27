
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_heaven/core/configs/styles/app_themes.dart';

/// Main App Widget
class PetsApp extends ConsumerWidget {
  /// Creates new instance of [PetsApp]
  const PetsApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Pets Heaven',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      home: Container(),
    );
  }
}
