import 'package:fardo/screens/scan_form.dart';
import 'package:flutter/material.dart';

import '../form_radius.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Icon(Icons.keyboard_return),
            SizedBox(
              width: 10,
            ),
            Text(
              'Formulário',
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ScanForm(),
            FormRadius(),
          ],
        ),
      ),
    );
  }
}
