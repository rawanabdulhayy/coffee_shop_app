// import 'package:flutter/material.dart';
//
// class DetailsScreen extends StatelessWidget {
//   const DetailsScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         // leading: IconButton(onPressed: {}, icon: Icons.arrow_back_ios),
//         leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
//         title: Text(
//           "Detail",
//           style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
//         ),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.favorite_border_outlined),
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(16),
//               child: Image.asset("assets/cappucino.png"),
//             ),
//             SizedBox(height: 10),
//             Text(
//               ("Cappucino"),
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
//             ),
//             Text(
//               ("with Chocolate"),
//               style: TextStyle(
//                 fontSize: 12,
//                 fontWeight: FontWeight.w400,
//                 color: Color.fromRGBO(47, 45, 44, 1),
//               ),
//             ),
//             Row(
//               children: [
//                 Icon(Icons.star_rate, color: Color.fromRGBO(251, 190, 33, 1)),
//                 Text(
//                   "4.8",
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
//                 ),
//                 Text(
//                   "(230)",
//                   style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// //image.asset doesn't take a border radius so neeed to be wrapped under a container if so
// //column >> padding >>column >> text to avoid applying so many paddings for every widhet in column, how does this worl?
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // === App Bar Configuration ===
      appBar: AppBar(
        // 'leading' widget typically holds the back button or navigation drawer icon.
        // Note: 'icon:' expects a widget, so we use Icon(...), not Icons.arrow_back_ios directly.
        leading: IconButton(
          onPressed: () {
            // Add navigation pop or custom back logic here.
          },
          icon: Icon(Icons.arrow_back_ios),
        ),

        // Title of the app bar.
        title: const Text(
          "Detail",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        centerTitle: true, // Center the title in the AppBar (iOS-style)
        // Action buttons on the right side of the AppBar
        actions: [
          IconButton(
            onPressed: () {
              // Handle favorite action here
            },
            icon: Icon(Icons.favorite_border_outlined),
          ),
        ],
      ),

      // === Body Section ===
      body: Padding(
        // Rather than padding each child individually inside the Column,
        // wrap the entire Column in a single Padding widget.
        // This makes the layout cleaner and more maintainable.
        padding: const EdgeInsets.all(16.0),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align children to the left
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // === Product Image with Border Radius ===
            // Image.asset doesn't accept a borderRadius directly,
            // so we wrap it with ClipRRect to apply rounded corners visually.
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset("assets/cappucino.png"),
              ),
            ),

            const SizedBox(height: 20), // Spacing between image and title
            // === Product Title ===
            Row(
              children: [
                Column(
                  children: [
                    const Text(
                      "Cappucino",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),

                    // === Subtitle (e.g. flavor or description) ===
                    const Text(
                      "with Chocolate",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(47, 45, 44, 1),
                      ),
                    ),

                    const SizedBox(height: 8),

                    // === Ratings Row ===
                    Row(
                      children: const [
                        Icon(
                          Icons.star_rate,
                          color: Color.fromRGBO(
                            251,
                            190,
                            33,
                            1,
                          ), // Star gold color
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
                SizedBox(width: 150,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Row(
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color.fromRGBO(255, 240, 240, 1),
                            ),
                            child: Image.asset("assets/icon1.png"),
                          ),
                          SizedBox(width: 10,),
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
            Text("Description", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
            // Text(
            //   "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More",
            // ),
            Text.rich(
              TextSpan(
                text: 'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. ',
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Read More',
                    style: TextStyle(
                      color: Color.fromRGBO(198, 124, 78, 1),
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {
                      // Add your navigation or expansion logic here
                    },
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            Text("Size", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 43,
                  width: 96,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("S", textAlign: TextAlign.center),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(
                        222,
                        222,
                        222,
                        1,
                      ), // 👈 or any color you like
                      width: 1, // optional: change border thickness
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                Container(
                  height: 43,
                  width: 96,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 245, 238, 1),
                    border: Border.all(
                      color: Color.fromRGBO(
                        198,
                        124,
                        78,
                        1,
                      ), // 👈 or any color you like
                      width: 1, // optional: change border thickness
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
                Container(
                  height: 43,
                  width: 96,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(
                        222,
                        222,
                        222,
                        1,
                      ), // 👈 or any color you like
                      width: 1, // optional: change border thickness
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
                        child: Text("Price", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400, color: Color.fromRGBO(155, 155, 155, 1)),),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "\$ 4.53",
                        style: TextStyle(
                          color: Color.fromRGBO(198, 124, 78, 1),
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 217,
                    height: 55,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text("Buy Now", textAlign: TextAlign.center, style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(198, 124, 78, 1),
                      borderRadius: BorderRadius.circular(16),
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
