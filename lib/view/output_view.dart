import 'package:flutter/material.dart';

class OutputView extends StatefulWidget {
  const OutputView({super.key});

  @override
  State<OutputView> createState() => _OutputViewState();
}

class _OutputViewState extends State<OutputView> {
  @override
  Widget build(BuildContext context) {
    int result = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(title: const Text("OUTPUT")),
      body: SafeArea(child: Text("Result.. $result")),
    );
  }
}
