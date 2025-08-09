import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text(
          "Order",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: Padding(
        //we added the padding here not at the row level to make the row and whatseover else centered
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //first child looks like a toggletab look
            //Container (whole bar) >child> Row >children>
            //2 gesture detectors >each's child> container >child> text
            Container(
              width: 321,
              // height: 48,
              //we removed the heoight to be able to hug the txet according to its heigh and added paddinf to make it look centered
              alignment: Alignment.center, // centers child
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                //we learnt three types >> Colors.white, Color.FromRGBO, Color(hex)
                color: Color(0xFFF5F5F5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // GestureDetector()x2 >> onTap, child: elly goaha
                  Expanded(
                    child: GestureDetector(
                      child: Container(
                        width: 154,
                        // height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFFD07B4B),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            textAlign: TextAlign.center,
                            'Deliver',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: Container(
                        width: 154,
                        // height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            textAlign: TextAlign.center,
                            'Pick Up',
                            style: TextStyle(
                              // color: isDeliverSelected ? Colors.white : Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            //this container having been given an infinity of width helped me get the texts to the left aligned, why tho?
            Container(
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Delivery Address",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color.fromRGBO(47, 45, 44, 1),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Jl. Kpg Sutoyo",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Color.fromRGBO(47, 45, 44, 1),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Color.fromRGBO(128, 128, 128, 1),
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        width: 120,
                        height: 27,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Color.fromRGBO(
                              222,
                              222,
                              222,
                              1,
                            ), // Set border color
                            width: 1.0, // Set border thickness
                            style:
                                BorderStyle
                                    .solid, // Optional: solid (default) or none),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.edit,
                              color: Color.fromRGBO(48, 51, 54, 1),
                              size: 15,
                            ),
                            SizedBox(width: 5),
                            Text("Edit Address"),
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        width: 101,
                        height: 27,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Color.fromRGBO(
                              222,
                              222,
                              222,
                              1,
                            ), // Set border color
                            width: 1.0, // Set border thickness
                            style:
                                BorderStyle
                                    .solid, // Optional: solid (default) or none),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.note_add,
                              color: Color.fromRGBO(48, 51, 54, 1),
                              size: 15,
                            ),
                            SizedBox(width: 5),
                            Text("Add Note"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  // okay, we have a new widget, a divider
                  // it takes a color thickness, height, indent and endindent
                  Divider(
                    color: Color.fromRGBO(234, 234, 234, 1), // Line color
                    thickness: 1.0, // Line thickness (height)
                    height: 0, // Spacing above & below the line
                    indent: 10, // Left margin
                    endIndent: 10, // Right margin
                  ),
                  SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("assets/coffee_order.png"),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cappucino',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color.fromRGBO(47, 45, 44, 1),
                            ),
                          ),
                          Text(
                            "with Chocolate",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromRGBO(155, 155, 155, 1),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 70),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Color.fromRGBO(234, 234, 234, 1),
                              ),
                            ),
                            child: Icon(Icons.add, size: 25),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "1",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Color.fromRGBO(47, 45, 44, 1),
                            ),
                          ),
                          SizedBox(width: 5),

                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Color.fromRGBO(234, 234, 234, 1),
                              ),
                            ),
                            child: Icon(Icons.remove, size: 25),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  Divider(
                    color: Color.fromRGBO(234, 234, 234, 1), // Line color
                    thickness: 1.0, // Line thickness (height)
                    height: 0, // Spacing above & below the line
                    indent: 10, // Left margin
                    endIndent: 10, // Right margin
                  ),
                  SizedBox(height: 20),

                  Container(
                    width: 318,
                    height: 51,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: Color.fromRGBO(222, 222, 222, 1),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/Discount.png"),
                          SizedBox(width: 10),
                          Text(
                            'Discount is applied',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color.fromRGBO(47, 45, 44, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  Text(
                    "Payment Summary",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color.fromRGBO(47, 45, 44, 1),
                    ),
                  ),
                  SizedBox(height: 10),

                  Row(
                    children: [
                      Text("Price"),
                      Spacer(),
                      Text(
                        "\$4.53",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color.fromRGBO(47, 45, 44, 1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text("Delivery Fee"),
                      Spacer(),
                      Text(
                        "\$2.0",
                        style: TextStyle(
                          //strikethrough: TextDecoration, decorationColor, decorationThickness
                          decoration:
                              TextDecoration.lineThrough, // line over text
                          decorationColor: Color.fromRGBO(
                            47,
                            45,
                            44,
                            1,
                          ), // line color
                          decorationThickness: 2, // line thickness
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "\$1.0",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color.fromRGBO(47, 45, 44, 1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(
                    color: Color.fromRGBO(234, 234, 234, 1), // Line color
                    thickness: 1.0, // Line thickness (height)
                    height: 0, // Spacing above & below the line
                    indent: 10, // Left margin
                    endIndent: 10, // Right margin
                  ),
                  SizedBox(height: 10),

                  Row(
                    children: [
                      Text("Total Payment"),
                      Spacer(),
                      Text(
                        "\$5.53",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color.fromRGBO(47, 45, 44, 1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),

                  Divider(
                    color: Color.fromRGBO(234, 234, 234, 1), // Line color
                    thickness: 1.0, // Line thickness (height)
                    height: 0, // Spacing above & below the line
                    indent: 10, // Left margin
                    endIndent: 10, // Right margin
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.money, color: Color.fromRGBO(198, 124, 78, 1)),
                      SizedBox(width: 10),
                      Container(
                        //this works instead of using padding as a centering widget
                        alignment: Alignment.center,
                        width: 51,
                        height: 24,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(198, 124, 78, 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "Cash",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "\$5.53",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Image.asset("assets/dots.png"),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 375,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(198, 124, 78, 1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Order",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
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
