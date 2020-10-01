import 'package:Meals_App/dummy_data.dart';
import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      children: DUMMY_CATEGORIES
          .map(
            (category) => (CategoryItem(
              category.id,
              category.title,
              category.color,
            )),
          )
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200, //value in pixels
        childAspectRatio: 3 / 2, //how items should be sized
        crossAxisSpacing: 20, //spacing between columns and rows
        mainAxisSpacing: 20, //spacing between columns and rows
      ),
    );
  }
}
