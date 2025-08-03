import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set the background color of the entire screen to black, Scaffold has a backgroundColor property.
      backgroundColor: Colors.black,

      // Use a Stack to layer widgets on top of each other: background image, and text/button overlays.
      body: Stack(
        children: [
          // === Layer 1: Background image ===
          Image.asset(
            "assets/c1.png",
            // fit: BoxFit.cover,
            // Ensures the image fills the screen without distortion.
            // width: double.infinity,
            // height: double.infinity,
          ),

          // === Layer 2: Foreground content ===
          Padding(
            // Add spacing from screen edges using NAMED parameters for clarity.
            padding: const EdgeInsets.only(
              left: 49,
              top: 27,
              right: 27,
              bottom: 8,
            ),

            // Align content at the bottom of the screen using Column and MainAxisAlignment.
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // === Headline Text ===
                Text(
                  "Coffee so good,\n your taste buds\n will love it.",
                  textAlign: TextAlign.center, // Center the multiline text.
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 34,
                  ),
                ),

                const SizedBox(height: 25),

                // === Subheading Text ===
                Text(
                  "The best grain, the finest roast, the\n powerful flavor.",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color.fromRGBO(169, 169, 169, 1), // Light gray color
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),

                const SizedBox(height: 25),

                // === Google Sign-in Button ===
                Container(
                  width: 317,
                  height: 54,

                  // ⚠️ Important note:
                  // When using a BoxDecoration (below), you must place the color inside the 'decoration'.
                  // DO NOT use the 'color' property directly in the Container alongside 'decoration'.
                  //
                  // ❌ This will cause an error:
                  // color: Colors.white,
                  //
                  // ✅ Correct way: Put the color INSIDE the BoxDecoration, like this:
                  decoration: BoxDecoration(
                    color:
                        Colors
                            .white, // Place the color here when using BoxDecoration
                    borderRadius: BorderRadius.circular(16), // Rounded corners
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/google.png"),
                      const SizedBox(width: 20),
                      const Text(
                        "Continue with Google",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(0, 0, 0, 0.54),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
