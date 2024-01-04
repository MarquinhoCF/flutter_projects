import 'package:flutter/material.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/models/category.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/screens/meals.dart';
import 'package:meals/widgets/category_grid_item.dart';

class CategoriesScream extends StatefulWidget {
  const CategoriesScream({
    super.key,
    required this.avaiableMeals,
  });

  final List<Meal> avaiableMeals;

  @override
  State<CategoriesScream> createState() => _CategoriesScreamState();
}

class _CategoriesScreamState extends State<CategoriesScream>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationControler;

  @override
  void initState() {
    super.initState();

    _animationControler = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      upperBound: 1,
      lowerBound: 0,
    );

    _animationControler.forward();
  }

  @override
  void dispose() {
    _animationControler.dispose();
    super.dispose();
  }

  void _selectedCategorie(BuildContext context, Category category) {
    final filteredMeals = widget.avaiableMeals
        .where((meal) => (meal.categories.contains(category.id)))
        .toList();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) => MealsScreen(
          title: category.title,
          meals: filteredMeals,
        ),
      ),
    ); // Navigator.of(context).push(route)
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationControler,
      child: GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          // availableCategories.map((category) => CategoryGridItem(category: category)).toList()
          for (final category in availableCategories)
            CategoryGridItem(
              category: category,
              onSelectedCategory: () {
                _selectedCategorie(context, category);
              },
            ),
        ],
      ),
      builder: (context, child) => SlideTransition(
        position: Tween(
          begin: const Offset(0, 0.3),
          end: const Offset(0, 0),
        ).animate(CurvedAnimation(
          parent: _animationControler,
          curve: Curves.easeInOut,
        )),
        child: child,
      ),
    );
  }
}
