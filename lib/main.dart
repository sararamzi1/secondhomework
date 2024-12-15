import 'package:flutter/material.dart';
import 'package:sechw/config/routes.dart';
// import 'themes/dark_theme.dart';
// import 'themes/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = false;
    return MaterialApp(
       title: 'Flutter Demo',
       // theme:isDarkMode ? darkTheme :LightTheme,
        initialRoute:baseRoute,
        routes: appRoutes,
        navigatorKey:RouterManager.navigatorKey,
        onGenerateRoute:RouterManager.generateRoute,
        debugShowCheckedModeBanner: false,
    ) ; }
}
