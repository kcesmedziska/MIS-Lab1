import 'package:flutter/material.dart';

class BadgeWidget extends StatelessWidget{
  final int count;

  const BadgeWidget({super.key, required this.count});

  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.blueGrey,
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Text(
          'Вкупно испити: $count',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}