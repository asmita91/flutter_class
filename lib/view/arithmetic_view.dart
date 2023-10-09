import 'package:flutter/material.dart';
import 'package:flutter2/app/routes/app_routes.dart';

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  // Contollers
  final firstController = TextEditingController();
  final secondController = TextEditingController();

  int result = 0;
  void add() {
    final firstNumber = int.parse(firstController.text);
    final secondNumber = int.parse(secondController.text);

    result = firstNumber + secondNumber;

    Navigator.pushNamed(context, AppRoute.outputRoute, arguments: result);
  }

  void sub() {
    final firstNumber = int.parse(firstController.text);
    final secondNumber = int.parse(secondController.text);

    result = firstNumber - secondNumber;

    Navigator.pushNamed(context, AppRoute.outputRoute, arguments: result);
  }

  void mul() {
    final firstNumber = int.parse(firstController.text);
    final secondNumber = int.parse(secondController.text);

    result = firstNumber * secondNumber;

    Navigator.pushNamed(context, AppRoute.outputRoute, arguments: result);
  }

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic View'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                controller: firstController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'First Number',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter first number';
                  } else if (int.parse(value) < 0) {
                    return 'Please enter positive number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              TextField(
                controller: secondController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Second Number',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Validate
                    if (formKey.currentState!.validate()) {
                      add();
                    }
                  },
                  child: const Text('Add'),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Validate
                    if (formKey.currentState!.validate()) {
                      sub();
                    }
                  },
                  child: const Text('Sub'),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Validate
                    if (formKey.currentState!.validate()) {
                      mul();
                    }
                  },
                  child: const Text('Mul'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
