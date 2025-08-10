import 'package:flutter/material.dart';
import 'package:session_8/details_screen.dart';

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
                SizedBox(height: 25),
                SizedBox(
                  height: 38,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
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
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 0.0,
                            vertical: 7,
                          ),
                          child: Center(
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
                      ),
                      SizedBox(width: 5),
                      Container(
                        constraints: BoxConstraints(minWidth: 99),
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
                          child: Center(
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
                      ),
                      SizedBox(width: 5),
                      Container(
                        constraints: BoxConstraints(minWidth: 99),
                        // width: 99,
                        //maybe we can have an if condition, where if it's less than the standard, use the standard, ow, remove width property? and that way it can take up the text's width
                        //we can use BoxConstraints(minwidth: 99)
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
                          child: Center(
                            child: Text(
                              "Americano",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(47, 75, 78, 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  // Expanded → makes the GridView take up the remaining available space, like we did with listview, yet back there, we knew the needed height to allocate, so we used a sizedbox as a wrapper instead.
                  child: GridView.count(
                    // crossAxisCount → number of columns in the grid
                    crossAxisCount: 2,
                    // crossAxisSpacing → space between items horizontally
                    crossAxisSpacing: 12,
                    // mainAxisSpacing → space between items vertically
                    mainAxisSpacing: 12,
                    // childAspectRatio → aspect ratio for each grid item (width / height)
                    // here: 155 / 238 means each item is taller than it is wide
                    childAspectRatio: 155 / 238,
                    // children → list of items in the grid
                    children: [
                      // EACH grid item → a container styled as a card
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) =>
                                      DetailsScreen(), // The page you want to go to
                            ),
                          );
                        },
                        child: Container(
                          width: 155,
                          height: 238,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    "assets/cup1.png", // image path
                                    width: 143, // image width
                                    height: 143, // image height
                                    fit: BoxFit.cover, // crop/fit behavior
                                  ), // this doesn't serve as another layer, it's just an overlaying widget over an already established layer
                                  // Positioned → places a widget at a specific spot inside the stack
                                  Positioned(
                                    top: 10,
                                    left: 10,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star_rate_rounded,
                                          color: Colors.orange,
                                          size: 20,
                                        ),
                                        const SizedBox(width: 5),
                                        Text(
                                          "4.3",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Cappucino",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      "with Chocolate",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "\$ 4.53",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          width: 32,
                                          height: 32,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                              198,
                                              124,
                                              78,
                                              1,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
                                          ),
                                          padding: const EdgeInsets.all(4),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 18,
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
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) =>
                                      DetailsScreen(), // The page you want to go to
                            ),
                          );
                        },
                        child: Container(
                          width: 155,
                          height: 238,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    "assets/cup1.png", // image path
                                    width: 143, // image width
                                    height: 143, // image height
                                    fit: BoxFit.cover, // crop/fit behavior
                                  ), // this doesn't serve as another layer, it's just an overlaying widget over an already established layer
                                  // Positioned → places a widget at a specific spot inside the stack
                                  Positioned(
                                    top: 10,
                                    left: 10,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star_rate_rounded,
                                          color: Colors.orange,
                                          size: 20,
                                        ),
                                        const SizedBox(width: 5),
                                        Text(
                                          "4.3",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Cappucino",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      "with Chocolate",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "\$ 4.53",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          width: 32,
                                          height: 32,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                              198,
                                              124,
                                              78,
                                              1,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
                                          ),
                                          padding: const EdgeInsets.all(4),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 18,
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
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) =>
                                      DetailsScreen(), // The page you want to go to
                            ),
                          );
                        },
                        child: Container(
                          width: 155,
                          height: 238,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    "assets/cup1.png", // image path
                                    width: 143, // image width
                                    height: 143, // image height
                                    fit: BoxFit.cover, // crop/fit behavior
                                  ), // this doesn't serve as another layer, it's just an overlaying widget over an already established layer
                                  // Positioned → places a widget at a specific spot inside the stack
                                  Positioned(
                                    top: 10,
                                    left: 10,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star_rate_rounded,
                                          color: Colors.orange,
                                          size: 20,
                                        ),
                                        const SizedBox(width: 5),
                                        Text(
                                          "4.3",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Cappucino",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      "with Chocolate",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "\$ 4.53",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          width: 32,
                                          height: 32,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                              198,
                                              124,
                                              78,
                                              1,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
                                          ),
                                          padding: const EdgeInsets.all(4),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 18,
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
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) =>
                                      DetailsScreen(), // The page you want to go to
                            ),
                          );
                        },
                        child: Container(
                          width: 155,
                          height: 238,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    "assets/cup1.png", // image path
                                    width: 143, // image width
                                    height: 143, // image height
                                    fit: BoxFit.cover, // crop/fit behavior
                                  ), // this doesn't serve as another layer, it's just an overlaying widget over an already established layer
                                  // Positioned → places a widget at a specific spot inside the stack
                                  Positioned(
                                    top: 10,
                                    left: 10,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star_rate_rounded,
                                          color: Colors.orange,
                                          size: 20,
                                        ),
                                        const SizedBox(width: 5),
                                        Text(
                                          "4.3",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Cappucino",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      "with Chocolate",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "\$ 4.53",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          width: 32,
                                          height: 32,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                              198,
                                              124,
                                              78,
                                              1,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
                                          ),
                                          padding: const EdgeInsets.all(4),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 18,
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
