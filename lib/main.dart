import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rohit_portfolio/providers/current_state.dart';
import 'package:rohit_portfolio/providers/theme_provider.dart';
import 'package:rohit_portfolio/screen/homescreen/home_page.dart';

void main() {
  runApp(const Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => CurrentState()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
