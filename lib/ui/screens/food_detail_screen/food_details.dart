import 'package:flutter/material.dart';

class FoodDetailsPage extends StatefulWidget {
  const FoodDetailsPage({super.key, this.food});

  final food;
  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: ListView(
            children: const [
              Center(
                child: Image(
                  color: Colors.black,
                  image: AssetImage(
                    "assets/Image Icon.png",
                  ),
                  height: 200,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  SizedBox(height: 10),
                  
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
