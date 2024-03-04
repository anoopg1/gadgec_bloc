import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gadgec_bloc/ui/product_list/screen_product_list.dart';
import 'package:gadgec_bloc/widgets/category_widget.dart';
import 'package:gadgec_bloc/widgets/product_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 12, bottom: 12),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  height: 35,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_cart,
                          size: 30,
                          color: Colors.grey,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/person.png"),
                      radius: 25,
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                    ),
                    border: OutlineInputBorder(),
                    hintText: "Search product that you wish to buy"),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 18 / 9,
                enlargeCenterPage: true,
              ),
              items: [
                Image.asset("assets/images/offer.png"),
              ],
            ),
            Text(
              "Categories",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.grey.shade800),
            ),
            SizedBox(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Row(
                    children: [
                      CategoryWidget(
                          imageUrl: "assets/images/laptop_category.png",
                          title: "Laptop"),
                      CategoryWidget(
                          imageUrl: "assets/images/mobile_category.jpg",
                          title: "Mobile"),
                      CategoryWidget(
                          imageUrl: "assets/images/headphone_cat.jpg",
                          title: "Headphone"),
                      CategoryWidget(
                          imageUrl: "assets/images/console_cat.jpg",
                          title: "Console"),
                      CategoryWidget(
                          imageUrl: "assets/images/tablet_cat.jpg",
                          title: "Tablet"),
                      CategoryWidget(
                          imageUrl: "assets/images/smart_watch_cat.jpg",
                          title: "Smart Watch"),
                    ],
                  ),
                ],
              ),
            ),
            Text(
              "Top Products",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.grey.shade800),
            ),
            SizedBox(
              height: 510,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                  childAspectRatio: 0.8,
                ),
                children: [
                  ProductWidget(),
                  ProductWidget(),
                  ProductWidget(),
                  ProductWidget()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.orange)),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ScreenProductList(),
                      ),
                    );
                  },
                  child: Text(
                    "show more",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
