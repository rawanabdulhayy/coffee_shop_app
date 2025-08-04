import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Order", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
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
            SizedBox(height: 20,),
            //this container having been given an infinity of width helped me get the texts to the left aligned, why tho?
            Container(
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Delivery Address"),
                  Text("Jl. Kpg Sutoyo"),
                  Text("Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai."),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
