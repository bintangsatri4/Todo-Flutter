import 'package:flutter/material.dart';

enum TaskCategories {
  education(icon: Icons.school, color: Colors.blueAccent),
  health(icon: Icons.favorite, color: Colors.redAccent),
  home(icon: Icons.home, color: Colors.teal),
  others(icon: Icons.calendar_month_rounded, color: Colors.deepPurpleAccent),
  personal(icon: Icons.person, color: Colors.lightBlueAccent),
  shopping(icon: Icons.shopping_bag, color: Colors.orangeAccent),
  social(icon: Icons.people, color: Colors.brown),
  travel(icon: Icons.flight, color: Colors.pinkAccent),
  work(icon: Icons.work, color: Colors.teal),
  ;

  final IconData icon;
  final Color color;
  const TaskCategories({required this.icon, required this.color});
}
