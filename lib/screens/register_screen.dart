import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Background Image
            Positioned.fill(
              child: Image.asset(
                ('assets/images/login.jpg'), // Ganti dengan path gambar latar belakang Anda
                fit: BoxFit.cover,
              ),
            ),
            // Content
            SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 20),
                  // Title
                  const Text(
                    'Create Account',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 250, 253, 255),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Sign up to get started',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                  const SizedBox(height: 40),
                  // Form Fields
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Full Name',
                      prefixIcon: const Icon(Icons.person_outline, color: Color(0xFF4E7D96)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      prefixIcon: const Icon(Icons.email_outlined, color: Color.fromARGB(255, 239, 243, 246)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: const Icon(Icons.lock_outline, color: Color.fromARGB(255, 247, 248, 249)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      prefixIcon: const Icon(Icons.lock_outline, color: Color(0xFF4E7D96)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Register Button
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Register',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
