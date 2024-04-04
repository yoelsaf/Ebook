// ignore_for_file: unnecessary_string_interpolations, library_private_types_in_public_api, non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'Pages/Home_Page.dart';

final themeProvider = StateProvider<bool>(((ref) => true));

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final islightTheme = ref.watch(themeProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: islightTheme ? ThemeData.light() : ThemeData.dark(),
      home: Home(),
    );
  }
}
