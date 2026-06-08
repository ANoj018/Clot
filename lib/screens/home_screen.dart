import 'package:clot/constants/app_constants.dart';
import 'package:clot/models/product_Models.dart';
import 'package:clot/screens/cate_Seeall_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/categories_Model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isFavorite = false;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.transparent,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/profile_image.png',

                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffff4f4f4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),

                        child: Row(
                          children: [
                            Text(
                              'Men',
                              style: GoogleFonts.gabarito(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(width: 5),

                            Icon(Icons.keyboard_arrow_down),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 44,
                      width: 44,
                      decoration: const BoxDecoration(
                        color: Color(0xfff8E6CEF),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30),

                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffff4f4f4),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search',
                      border: InputBorder.none,
                    ),
                  ),
                ),

                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Categories', style: AppConstants.headingText),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CateSeeallScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'See All>>',
                        style: AppConstants.subheadingText,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 15),

                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                shape: BoxShape.circle,
                              ),
                              height: 60,
                              width: 60,
                              child: ClipOval(
                                child: Image.asset(categories[index].image),
                              ),
                            ),

                            Text(categories[index].title),
                          ],
                        ),
                      );
                    },
                  ),
                ),

                SizedBox(height: 5),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Top Selling', style: AppConstants.headingText),
                    Text('See All>>', style: AppConstants.subheadingText),
                  ],
                ),

                SizedBox(height: 15),

                SizedBox(
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 180,
                        margin: const EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                  products[index].image,
                                  height: 230,
                                  width: 180,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  top: 10,
                                  right: 10,
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        products[index].isFavorite =
                                            !products[index].isFavorite;
                                      });
                                    },
                                    icon: Icon(
                                      products[index].isFavorite
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(products[index].title, maxLines: 2),
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              child: Text(
                                products[index].price,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),

                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New In',
                      style: TextStyle(
                        color: Color(0xfff8E6CEF),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text('See All>>', style: AppConstants.subheadingText),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
