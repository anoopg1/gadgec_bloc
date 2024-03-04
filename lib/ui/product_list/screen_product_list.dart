import 'package:flutter/material.dart';
import 'package:gadgec_bloc/widgets/category_widget.dart';
import 'package:gadgec_bloc/widgets/product_widget.dart';

class ScreenProductList extends StatelessWidget {
  const ScreenProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text(
              "Top Products",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
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
            SizedBox(
                height: 510,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 4,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: 100,
                  itemBuilder: (context, index) => ProductWidget(),
                )),
          ],
        ),
      ),
    );
  }
}
