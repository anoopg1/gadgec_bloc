import 'package:flutter/material.dart';
import 'package:gadgec_bloc/ui/product_description/screen_product_description.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ScreenProductDescription(
              brand: "Lenovo",
              title: "sdfsdf",
              description:
                  "dfhasivuh clkvnsdknv kjd nloskd kslnclskdnc slkdcnkln asdv",
              price: "34234",
              discount: "234",
              mrpPrice: "23423424",
              rating: "4-3"),
        ));
      },
      child: Card(
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ], color: Colors.white, borderRadius: BorderRadius.circular(14)),
          child: Padding(
            padding: const EdgeInsets.only(left: 8, top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/pocco.png",
                    height: 90,
                    width: 100,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 50,
                    decoration: BoxDecoration(color: Colors.green),
                    child: Row(
                      children: [
                        Text(
                          "4.3",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
                Text(
                  "POCO",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("POCO C55 (Forest Green)"),
                Text("6 GB RAM"),
                Row(
                  children: [
                    Text(
                      "-45%",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "13999",
                      style: TextStyle(decoration: TextDecoration.lineThrough),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    Text(
                      "₹7499",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
