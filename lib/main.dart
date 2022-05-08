import 'package:flutter/material.dart';
import 'package:nav_menu/screens/categories_screen.dart';
import 'package:nav_menu/screens/category_meals_screen.dart';
import 'package:nav_menu/screens/filter_screen.dart';
import 'package:nav_menu/screens/meal_detail_screen.dart';
import 'package:nav_menu/screens/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.limeAccent,
        canvasColor: Color.fromRGBO(255, 245, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            body2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            title: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
      ),
      debugShowCheckedModeBanner: false,
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        FiltersScreen.routeName: (ctx) => FiltersScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => CategoryMealsScreen(),
        );
      },
    );
  }
}
