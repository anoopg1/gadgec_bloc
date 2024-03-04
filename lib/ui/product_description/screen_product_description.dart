import 'package:flutter/material.dart';
import 'package:gadgec_bloc/constants/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ScreenProductDescription extends StatelessWidget {
  const ScreenProductDescription(
      {super.key,
      required this.brand,
      required this.title,
      required this.description,
      required this.price,
      required this.discount,
      required this.mrpPrice,
      required this.rating});

  final String brand;
  final String title;
  final String description;
  final String price;
  final String discount;
  final String mrpPrice;
  final String rating;

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18),
        child: ListView(
          children: [
            SizedBox(
              height: 300,
              child: PageView(
                controller: controller,
                children: const [
                  Image(image: AssetImage('assets/images/pocco.png')),
                  Image(image: AssetImage('assets/images/pocco.png')),
                  Image(image: AssetImage('assets/images/pocco.png')),
                ],
              ),

              //dot indicator
            ),
            Center(
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.deepPurple,
                  dotColor: Colors.deepPurple.shade100,
                  dotHeight: 8,
                  dotWidth: 10,
                  spacing: 11,
                ),
              ),
            ),
            kheight30,
            Text(
              brand,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.grey.shade800),
            ),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.grey.shade700),
            ),
            kheight5,
            Text(description),
            kheight20,
            const Text(
              "Gadgec Saver Price",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.green),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "₹ $price",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          discount,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.green,
                          ),
                        ),
                        Text(mrpPrice,
                            style: const TextStyle(
                                decoration: TextDecoration.lineThrough))
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      color: Colors.green,
                      height: 20,
                      width: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            rating,
                            style: const TextStyle(color: Colors.white),
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 14,
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            kheight30,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child:
                      Text("Add to Cart", style: TextStyle(color: Colors.blue)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white)),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Buy Now", style: TextStyle(color: Colors.white)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
