import 'package:flutter/material.dart';

import 'package:meals/models/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    required this.title,
    required this.meals,
  });

  final String title;
  final List<Meal> meals;
  @override
  Widget build(BuildContext context) {
    Widget content = (meals.isEmpty)
        ? Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Doh..',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground)),
                const SizedBox(
                  height: 16,
                ),
                Text('Try again',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground)),
              ],
            ),
          )
        : ListView.builder(
            itemCount: meals.length,
            itemBuilder: (context, index) {
              return Text(
                meals[index].title,
                style: const TextStyle(color: Colors.white),
              );
            },
          );

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: content,
    );
  }
}
