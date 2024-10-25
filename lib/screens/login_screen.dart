import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // TextEditingController untuk mengontrol input
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Fungsi untuk auto-fill (untuk keperluan demo saja)
  void _autoFillLogin() {
    _emailController.text = "anisaimutz@gmail.com"; // Email default
    _passwordController.text = "password123"; // Password default
  }

  @override
  void dispose() {
    // Bersihkan controller ketika widget di dispose
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Background Image
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/login.jpg'), // Ganti dengan path image 
                  fit: BoxFit.cover, 
                ),
              ),
            ),
            // Content di atas background image
            SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 50),
                  // Icon
                  const Icon(
                    Icons.lock_outlined,
                    size: 100,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  const SizedBox(height: 30),
                  // Welcome Text
                  const Text(
                    'Welcome Back!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Sign in to continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  const SizedBox(height: 50),
                  // Email Field
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      prefixIcon: const Icon(Icons.email_outlined, color: Color(0xFF4E7D96)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 255, 253, 253),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () => _emailController.clear(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Password Field
                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: const Icon(Icons.lock_outline, color: Color(0xFF4E7D96)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 245, 245, 245),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () => _passwordController.clear(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Auto-fill Button
                  TextButton(
                    onPressed: _autoFillLogin,
                    child: const Text(
                      'Auto Fill Login',
                      style: TextStyle(
                        color: Color.fromARGB(255, 231, 239, 243),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Login Button
                  ElevatedButton(
                    onPressed: () {
                      if (_emailController.text.isNotEmpty && 
                          _passwordController.text.isNotEmpty) {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          '/home',
                          (route) => false,
                        );
                      } else {
                        // Tampilkan pesan error jika form kosong
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Please fill in all fields'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Register Link
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account? ',
                        style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/register');
                        },
                        child: const Text(
                          'Register',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
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
