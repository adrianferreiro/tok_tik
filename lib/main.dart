import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/config/theme/app_theme.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';
import 'package:toktik/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      //operador de cascada .. para no volver a escribir el nombre del objeto
      //..loadNextPage()
      providers: [
        ChangeNotifierProvider(
            lazy: false, create: (_) => DiscoverProvider()..loadNextPage())
      ],
      child: MaterialApp(
        theme: AppTheme().getTheme(),
        debugShowCheckedModeBanner: false,
        title: 'TokTik',
        home: const DiscoverScreen(),
      ),
    );
  }
}
