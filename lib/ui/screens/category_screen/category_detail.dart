import 'package:flutter/material.dart';
import 'package:smit_mini_project/ui/screens/category_screen/data/category_lists.dart';
import 'package:smit_mini_project/ui/screens/category_screen/widgets/top_bar.dart';

class CategoryDetails extends StatefulWidget {
  const CategoryDetails({
    this.index,
    super.key,
  });
  final int? index;

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  final List<String> categories = [
    "Meats & Fishes",
    "Vegetables",
    "Fruits",
    "Chicken"
  ];

  List<String> selectedCategories = [];

  @override
  Widget build(BuildContext context) {
    final filterProducts = productList.where((product) {
      return selectedCategories.isEmpty ||
          selectedCategories.contains(product.category);
    }).toList();
    return Scaffold(
      body: Column(children: [
        const CustomTopBar(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: categories
                  .map((category) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: FilterChip(
                            selected: selectedCategories.contains(category),
                            label: Text(category),
                            onSelected: (selected) {
                              setState(() {
                                if (selected) {
                                  selectedCategories.add(category);
                                } else {
                                  selectedCategories.remove(category);
                                }
                              });
                            }),
                      ))
                  .toList(),
            ),
          ),
        ),
        const Text("List of Items"),
        Expanded(
          child: ListView.builder(
            itemCount: filterProducts.length,
            itemBuilder: (context, index) {
              final product = filterProducts[index];
              return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 150,
                          width: 150,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            color: Colors.grey,
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Image(
                                      height: 70,
                                      image:
                                          AssetImage("assets/Image Icon.png")),
                                ],
                              ),
                            ],
                          )),
                    ),
                    Column(
                      children: [Text(product.name), Text(product.category)],
                    ),
                  ]);
            },
          ),
        )
      ]),
    );
  }
}
