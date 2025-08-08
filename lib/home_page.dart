import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //layer 1 -- Gradient Container
          Container(
            height: 270,
            width: double.infinity,
            decoration: BoxDecoration(
              //gradient is a property inside of the BoxDecoration
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  //order matters in how colors are displayed
                  //doesn't have to be only a couple, but multiple
                  Color.fromRGBO(19, 19, 19, 1),
                  Color.fromRGBO(43, 43, 43, 1),
                  Color.fromRGBO(43, 43, 43, 1),
                ],
              ),
            ),
          ),

          //layer 2 -- Column for the rest of the page
          //we had the padding on row because photo and column are all padded, but top 69 vs 62?
          Padding(
            padding: const EdgeInsets.only(top: 62.0, left: 30, right: 30),
            child: Column(
              children: [
                //Writings and Picture on top
                Row(
                  children: [
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment
                              .start, // Add this to align text to left
                      children: [
                        Padding(
                          //62 + 7 = 69, voila!
                          padding: const EdgeInsets.only(top: 7.0, left: 0),
                          child: Text(
                            "Location",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Bilzen,Tanjungbalai",
                              style: TextStyle(
                                color: Color.fromRGBO(221, 221, 221, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Image.asset("assets/avatar.png"),
                  ],
                ),
                //some widgets can be given colors on their static state and upon interaction
                //search bars are an example of such.
                //search bars take backgroundColor, leading icon, shape, elevation, padding, msmhash actions like the appbar but trailing.
                SizedBox(height: 15),
                SearchBar(
                  elevation: WidgetStateProperty.all(0),
                  padding: WidgetStateProperty.all(
                    EdgeInsets.only(left: 10, right: 0),
                  ),
                  backgroundColor: WidgetStateProperty.all(
                    Color.fromRGBO(49, 49, 49, 1),
                  ),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  leading: Icon(Icons.search, color: Colors.white),
                  trailing: [
                    Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(198, 124, 78, 1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Icon(Icons.tune, color: Colors.white),
                    ),
                  ],
                  hintText: 'Search coffee',
                  hintStyle: WidgetStateProperty.all(
                    TextStyle(color: Color.fromRGBO(152, 152, 152, 1)),
                  ),
                  textStyle: WidgetStateProperty.all(
                    TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 25),
                Image.asset("assets/banner.png"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: .0, ),
                  child: Row(
                    children: [
                      Container(
                        width: 121,
                        height: 38,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(198, 124, 78, 1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 0.0,
                            vertical: 7,
                          ),
                          child: Text(
                            textAlign: TextAlign.center,

                            "Cappucino",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        width: 99,
                        height: 38,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(243, 243, 243, 1),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 0.0,
                            vertical: 7,
                          ),
                          child: Text(
                            "Machiato",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(47, 75, 78, 1),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),

                      Container(
                        width: 69,
                        height: 38,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(243, 243, 243, 1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 7,
                          ),
                          child: Text(
                            "Latte",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(47, 75, 78, 1),
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
        ],
      ),
    );
  }
}
