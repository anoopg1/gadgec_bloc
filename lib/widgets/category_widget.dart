import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget(
      {super.key, required this.imageUrl, required this.title});

  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(imageUrl),
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Text(
            title,
            style: TextStyle(color: Colors.grey.shade800),
          ),
        ],
      ),
    );
  }
}
