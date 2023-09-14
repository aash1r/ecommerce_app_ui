import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smit_mini_project/data/category_data/category_lists.dart';
import 'package:smit_mini_project/data/category_data/item_lists.dart';
import 'package:smit_mini_project/ui/screens/category_screen/item_detail.dart';
import 'package:smit_mini_project/ui/screens/category_screen/widgets/top_bar.dart';

class CategoryDetails extends StatefulWidget {
  const CategoryDetails({
    this.index,
    this.select,
    super.key,
  });
  // ignore: prefer_typing_uninitialized_variables
  final select;
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
    final filterProducts = widget.select?.where((product) {
      return selectedCategories.isEmpty ||
          selectedCategories.contains(product['type']);
    }).toList();
    return Scaffold(
      body: Column(children: [
        const CustomTopBar(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 0, top: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: categories
                  .map((category) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: FilterChip(
                            selected: selectedCategories.contains(category),
                            label: Text(category),
                            selectedColor: const Color(0xFFF9B023),
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
        Expanded(
          child: ListView.builder(
            itemCount: filterProducts.length,
            itemBuilder: (context, index) {
              final product = filterProducts[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ItemDetails(
                              selected: productList[index].name,
                              selectedCategory: productList[index].name ==
                                      Product.productNames[index]
                                  ? allProducts[index]
                                  : bignsmallfish,
                            )),
                  );
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                            height: 150,
                            width: 150,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              color: const Color.fromARGB(255, 239, 239, 239),
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Image(
                                        height: 70,
                                        image: AssetImage(
                                            "assets/Image Icon.png")),
                                  ],
                                ),
                              ],
                            )),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              product['name'],
                              textAlign: TextAlign.center,
                              style: GoogleFonts.manrope(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  height: 1.22),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              product['type'],
                              style: GoogleFonts.manrope(
                                  fontSize: 16, height: 1.58),
                            ),
                          )
                        ],
                      ),
                    ]),
              );
            },
          ),
        )
      ]),
    );
  }
}
