import 'package:flutter/material.dart';

import 'view.dart';

class TestScreens extends StatefulWidget {
  const TestScreens({super.key});

  @override
  State<TestScreens> createState() => TestScreensController();
}

class TestScreensController extends State<TestScreens> {
  @override
  Widget build(BuildContext context) {
    return TestScreensView(this);
  }
}
