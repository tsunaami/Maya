import 'package:flutter/material.dart';

class  CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  final Color lightPinkBackground = const Color(0xFFFFE4E9);
  final Color magentaText = const Color(0xFFD80073);
  final Color magentaAccent = const Color(0xFFC2007B);

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      String email = _emailController.text;
      String password = _passwordController.text;

      print('Creating account with:');
      print('Email: $email');
      print('Password: $password');

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Account created successfully for $email!'),
          backgroundColor: Colors.green,
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please correct the errors in the form.'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle labelStyle = TextStyle(color: magentaText, fontSize: 16, fontWeight: FontWeight.w500);
    final TextStyle buttonTextStyle = TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold);
    final InputBorder inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: BorderSide(color: magentaText.withOpacity(0.5)),
    );
    final InputBorder focusedInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: BorderSide(color: magentaAccent, width: 2.0),
    );

    return Scaffold(
      backgroundColor: lightPinkBackground,
     
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                  controller: _emailController,
                  style: TextStyle(color: magentaText.withOpacity(0.9)),
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    labelStyle: labelStyle,
                    prefixIcon: Icon(Icons.email_outlined, color: magentaText.withOpacity(0.7)),
                    border: inputBorder,
                    enabledBorder: inputBorder,
                    focusedBorder: focusedInputBorder,
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _passwordController,
                  style: TextStyle(color: magentaText.withOpacity(0.9)),
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: labelStyle,
                    prefixIcon: Icon(Icons.lock_outline, color: magentaText.withOpacity(0.7)),
                    border: inputBorder,
                    enabledBorder: inputBorder,
                    focusedBorder: focusedInputBorder,
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    }
                    if (value.length < 6) {
                      return 'Password must be at least 6 characters long';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _confirmPasswordController,
                  style: TextStyle(color: magentaText.withOpacity(0.9)),
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    labelStyle: labelStyle,
                    prefixIcon: Icon(Icons.lock_reset_outlined, color: magentaText.withOpacity(0.7)),
                    border: inputBorder,
                    enabledBorder: inputBorder,
                    focusedBorder: focusedInputBorder,
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your password';
                    }
                    if (value != _passwordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: magentaAccent,
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  onPressed: _submitForm,
                  child: Text('Create Account', style: buttonTextStyle),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
