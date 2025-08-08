import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // === APP BAR CONFIGURATION ===
      appBar: AppBar(
        // 'leading' refers to the widget on the far left of the AppBar (usually a back button).
        // We're using an IconButton with the back arrow icon (iOS-style), wrapped inside Icon(...).
        leading: IconButton(
          onPressed: () {
            // Add custom navigation logic here (e.g. Navigator.pop(context)).
          },
          icon: Icon(Icons.arrow_back_ios),
        ),

        // The title displayed in the center of the AppBar.
        title: const Text(
          "Detail",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        centerTitle: true, // Aligns the title to the center — common on iOS.

        // Right-side icon buttons (actions) in the AppBar.
        actions: [
          IconButton(
            onPressed: () {
              // Action logic for when the favorite icon is tapped.
            },
            icon: Icon(Icons.favorite_border_outlined),
          ),
        ],
      ),

      // === BODY SECTION ===
      body: Padding(
        // Adds consistent padding around the entire Column instead of padding each element separately.
        padding: const EdgeInsets.all(16.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Aligns children to the left side.
          mainAxisAlignment: MainAxisAlignment.center, // Vertically centers the Column content (can be adjusted).
          children: [
            // === PRODUCT IMAGE WITH ROUNDED CORNERS ===
            // Since Image.asset doesn’t support borderRadius directly,
            // we wrap it in ClipRRect to apply rounded corners.
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset("assets/cappucino.png"),
              ),
            ),

            const SizedBox(height: 20), // Adds vertical spacing after the image.

            // === TITLE & DETAILS ROW ===
            Row(
              children: [
                Column(
                  children: [
                    // === PRODUCT NAME ===
                    const Text(
                      "Cappucino",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8), // Spacing between title and subtitle.

                    // === FLAVOR DESCRIPTION ===
                    const Text(
                      "with Chocolate",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(47, 45, 44, 1),
                      ),
                    ),
                    const SizedBox(height: 8),

                    // === STAR RATING WITH COUNT ===
                    Row(
                      children: const [
                        Icon(
                          Icons.star_rate,
                          color: Color.fromRGBO(251, 190, 33, 1), // Yellow star color.
                        ),
                        SizedBox(width: 4),
                        Text(
                          "4.8",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 6),
                        Text(
                          "(230)",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(width: 150), // Spacing between title section and icon buttons on the right.

                // === ICON BUTTONS (EXTRA FEATURES) ===
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Row(
                        children: [
                          // Icon 1 (e.g., customization icon)
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color.fromRGBO(255, 240, 240, 1),
                            ),
                            child: Image.asset("assets/icon1.png"),
                          ),
                          SizedBox(width: 10),
                          // Icon 2 (e.g., ingredients icon)
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color.fromRGBO(255, 240, 240, 1),
                            ),
                            child: Image.asset("assets/icon2.png"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 40),

            // === DESCRIPTION SECTION ===
            Text(
              "Description",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),

            // === DESCRIPTION TEXT WITH STYLED "READ MORE" ===
            // Use Text.rich with TextSpan to allow mixed styles within the same paragraph.
            Text.rich(
              TextSpan(
                text:
                'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. ',
                style: TextStyle(color: Colors.black), // Normal text style
                children: [
                  TextSpan(
                    text: 'Read More',
                    style: TextStyle(
                      color: Color.fromRGBO(198, 124, 78, 1), // Highlight color
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // You can add navigation or expandable logic here
                      },
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            // === SIZE SELECTOR ===
            Text(
              "Size",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Size S — Not selected (default border)
                Container(
                  height: 43,
                  width: 96,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(222, 222, 222, 1),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("S", textAlign: TextAlign.center),
                  ),
                ),
                // Size M — Selected (highlighted background and border)
                Container(
                  height: 43,
                  width: 96,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 245, 238, 1),
                    border: Border.all(
                      color: Color.fromRGBO(198, 124, 78, 1),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "M",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color.fromRGBO(198, 124, 78, 1)),
                    ),
                  ),
                ),
                // Size L — Not selected (default border)
                Container(
                  height: 43,
                  width: 96,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(222, 222, 222, 1),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("L", textAlign: TextAlign.center),
                  ),
                ),
              ],
            ),

            SizedBox(height: 30),

            // === PRICE & BUY BUTTON ===
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Text(
                          "Price",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(155, 155, 155, 1),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "\$ 4.53",
                        style: TextStyle(
                          color: Color.fromRGBO(198, 124, 78, 1),
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),

                  // Buy Now Button
                  Container(
                    width: 217,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(198, 124, 78, 1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Buy Now",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
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