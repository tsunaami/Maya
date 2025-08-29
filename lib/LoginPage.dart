import 'package:flutter/material.dart';

// If using a Google Font instead of a local custom font, you'd import it here:
// import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Define your brand color for easy reuse
    const Color brandColor = Color(0xFFE91E63); // Example Pink color, adjust to your exact pink

    // Define a consistent spacing
    const double verticalSpacing = 24.0;
    const double fieldSpacing = 16.0;

    return Scaffold(
      backgroundColor: Colors.white, // Or a very light pink for background
      body: SafeArea( // Ensures content is not obscured by system UI (notches, etc.)
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center vertically
              crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch children horizontally
              children: <Widget>[
                // Big Bold "Login" Text
                Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 48, // Large font size
                    fontWeight: FontWeight.bold, // Bold

                    fontFamily: 'Poppins',  // Your custom font family from pubspec.yaml
                    // Or use GoogleFonts: GoogleFonts.poppins().fontFamily,
                    color: Colors.pinkAccent, // Your brand's pink color
                  ),
                ),
                const SizedBox(height: verticalSpacing * 1.5), // More space after title

                // Email TextField
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: Icon(Icons.email_outlined, color: brandColor.withOpacity(0.7)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(color: brandColor.withOpacity(0.5)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(color: brandColor.withOpacity(0.5)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(color: brandColor, width: 2.0),
                    ),
                    filled: true,
                    fillColor: brandColor.withOpacity(0.05),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: fieldSpacing),

                // Password TextField
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock_outline, color: brandColor.withOpacity(0.7)),
                    // To add a suffix icon for password visibility toggle (optional)
                    // suffixIcon: IconButton(
                    //   icon: Icon(Icons.visibility_off_outlined),
                    //   onPressed: () { /* TODO: Toggle password visibility */ },
                    //   color: brandColor.withOpacity(0.7),
                    // ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(color: brandColor.withOpacity(0.5)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(color: brandColor.withOpacity(0.5)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(color: brandColor, width: 2.0),
                    ),
                    filled: true,
                    fillColor: brandColor.withOpacity(0.05),
                  ),
                  obscureText: true, // Hides password text
                ),
                const SizedBox(height: verticalSpacing),



                // Login Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: brandColor, // Pink background
                    foregroundColor: Colors.white, // White text
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      // fontFamily: 'MyBrandFont', // Optionally use brand font here too
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  onPressed: () {
                    // TODO: Implement login logic
                    print("Login button pressed");
                  },
                  child: const Text("Login"),
                ),
                const SizedBox(height: fieldSpacing),

                // Create Account TextButton
                TextButton(
                  onPressed: () {
                    // TODO: Implement navigation to account creation page
                    print("Create account pressed");
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: brandColor, // Pink text
                  ),
                  child: const Text(
                    "Create account",
                    style: TextStyle(
                      fontSize: 16,
                      // fontFamily: 'MyBrandFont', // Optionally use brand font
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
