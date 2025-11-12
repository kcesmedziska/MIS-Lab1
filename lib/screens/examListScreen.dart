import 'package:flutter/material.dart';
import '../data/examData.dart';
import '../widgets/examCard.dart';
import '../widgets/badgeWidget.dart';

class ExamListScreen extends StatelessWidget{
  const ExamListScreen({super.key});

@override
  Widget build(BuildContext context) {
    final sortedExams = [...exams]..sort((a,b) => a.date.compareTo(b.date));
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Распоред за испити - 226049'),
      ),
      body: ListView.builder(
          itemCount: sortedExams.length,
          itemBuilder: (context, index){
            return ExamCard(exam: sortedExams[index]);
          },
      ),
      bottomNavigationBar: BadgeWidget(count: sortedExams.length)
    );
  }
}
