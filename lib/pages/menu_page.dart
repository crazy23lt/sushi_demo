import 'package:demo/components/button.dart';
import 'package:demo/components/food_tile.dart';
import 'package:demo/models/shop.dart';
import 'package:demo/pages/food_detail_page.dart';
import 'package:demo/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});
  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // navigate to food item details page
  void navigateToFoodDetails(int index) {
    final shop = context.read<Shop>();
    final foodMenu = shop.foodMenu;
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => FoodDetailsPage(food: foodMenu[index])));
  }

  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    final foodMenu = shop.foodMenu;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: Icon(Icons.menu, color: Colors.grey[900]),
        title: const Text('Tokyo'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/cartpage");
            },
            icon: const Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25.0),
            padding:
                const EdgeInsets.symmetric(vertical: 25.0, horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Get 32% Promo',
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    MyButton(text: "Redeem", onTip: () => {})
                  ],
                ),
                Image.asset("lib/images/001-sushi.png", height: 100)
              ],
            ),
          ),
          const SizedBox(height: 25.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  hintText: "Search here...."),
            ),
          ),
          const SizedBox(height: 25.0),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Food Menu",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                    fontSize: 18),
              )),
          const SizedBox(height: 10.0),
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodMenu.length,
                  itemBuilder: (context, index) => FoodTile(
                        food: foodMenu[index],
                        onTap: () => navigateToFoodDetails(index),
                      ))),
          const SizedBox(height: 25.0),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20.0)),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset("lib/images/002-sushi-1.png", height: 60.0),
                    const SizedBox(width: 20.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Salmon Eggs",
                            style: GoogleFonts.dmSerifDisplay(fontSize: 18)),
                        const SizedBox(height: 10.0),
                        Text("\$21.00",
                            style: TextStyle(color: Colors.grey[700]))
                      ],
                    ),
                  ],
                ),
                const Icon(Icons.favorite_outline, color: Colors.grey, size: 28)
              ],
            ),
          )
        ],
      ),
    );
  }
}
