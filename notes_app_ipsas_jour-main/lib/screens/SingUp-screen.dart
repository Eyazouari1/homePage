import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class Singup extends StatelessWidget {
  const Singup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Notes',
            style: TextStyle(),
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                const CustomTextField(
                  labelText: 'email',
                  hintText: 'johnDoe@email.com',
                ),
                const SizedBox(
                  height: 50,
                ),
                const CustomTextField(
                  labelText: 'Password',
                  hintText: '************',
                  isPassword: true,
                ),
                const SizedBox(
                  height: 50,
                ),
                TextButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {}
                  },
                  child: Text('SignUP'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}