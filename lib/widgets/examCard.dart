import 'package:flutter/material.dart';
import '../models/exam.dart';
import '../screens/examDetailScreen.dart';
import 'package:intl/intl.dart';

class ExamCard extends StatelessWidget{
  final Exam exam;

  const ExamCard ({super.key, required this.exam});

  @override
  Widget build(BuildContext context){
    final now = DateTime.now();
    final isPast = exam.date.isBefore(now);

    return Card(
      color: isPast ? Colors.grey[300] : Colors.lightBlue[100],
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(exam.subjectName),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Датум: ${DateFormat('dd.MM.yyyy').format(exam.date)}'),
            Text('Време: ${exam.time}'),
            Text('Простории: ${exam.rooms.join(', ')}'),
          ],
        ),
        leading: const Icon(Icons.calendar_today),
        trailing: Icon(Icons.meeting_room,
          color: isPast ? Colors.black45 : Colors.blueAccent),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => ExamDetailScreen(exam: exam)),
        ),
      ),
    );
  }
}