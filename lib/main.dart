import 'package:flutter/material.dart';

import 'package:flutter_foodapps/pages/home_page.dart';

void main() => runApp(FoodStore());

class FoodStore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
