import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:layout_a/screens/home_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: HomeScreen.name,
          page: () => HomeScreen(),
        ),
      ],
    );
  }
}
