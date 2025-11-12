import 'package:flutter/material.dart';
import 'screens/examListScreen.dart';

void main(){
  runApp(const ExamScheduleApp());
}
class ExamScheduleApp extends StatelessWidget{
  const ExamScheduleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Распоред за испити - 226049',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const ExamListScreen(),
    );
  }
}

