import 'package:flutter/material.dart';
import 'pages/timFolder.dart';

void main() {
  runApp(UiManager());
}

class UiManager extends StatelessWidget {
  const UiManager({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "pengaturan file",
      home: HalamanTimFolder(),
    );
  }
}
