import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  StateMachineController? _controller;
  SMIBool? _isChecking;
  SMIBool? _isHandsUp;
  SMITrigger? _trigSuccess;
  SMITrigger? _trigFail;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                width: size.width,
                height: 200,
                child: RiveAnimation.asset(
                  'assets/animated_login_bear.riv',
                  stateMachines: const ['Login Machine'],
                  onInit: (artboard) {
                    final controller =
                        StateMachineController.fromArtboard(
                      artboard,
                      'Login Machine',
                    );

                    if (controller == null) return;

                    artboard.addController(controller);

                    _controller = controller;
                    _isChecking =
                        controller.findSMI('isChecking') as SMIBool?;
                    _isHandsUp =
                        controller.findSMI('isHandsUp') as SMIBool?;
                    _trigSuccess =
                        controller.findSMI('trigSuccess') as SMITrigger?;
                    _trigFail =
                        controller.findSMI('trigFail') as SMITrigger?;
                  },
                ),
              ),

              const SizedBox(height: 20),

              // EMAIL
              TextField(
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    _isHandsUp?.change(false);
                    _isChecking?.change(true);
                  } else {
                    _isChecking?.change(false);
                  }
                },
                decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              // PASSWORD
              TextField(
                obscureText: _obscureText,
                onChanged: (value) {
                  _isChecking?.change(false);
                  _isHandsUp?.change(true);
                },
                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  // Simulación simple
                  if (_isChecking != null) {
                    _isChecking!.change(false);
                  }

                  if (_isHandsUp != null) {
                    _isHandsUp!.change(false);
                  }

                  // Aquí puedes validar login
                  _trigSuccess?.fire();
                  // Si quieres probar error usa:
                  // _trigFail?.fire();
                },
                child: const Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
