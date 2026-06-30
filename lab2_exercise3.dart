void main() {
  List<String> subjects = ['Math', 'Science', 'English'];

  print('จำนวนวิชาในลิสต์: ${subjects.length}');

  print('วิชาแรก: ${subjects[0]}');
  print('วิชาสุดท้าย: ${subjects[subjects.length - 1]}');

  subjects.add('Art');
  print('ลิสต์วิชาทั้งหมดหลังเพิ่ม: $subjects');

  Map<String, int> studentScores = {
    'Math': 85,
    'Science': 90,
  };

  print('คะแนนวิชา Math: ${studentScores['Math']}');

  studentScores['Art'] = 45;
  print('คะแนนทั้งหมดหลังเพิ่ม: $studentScores');

  print('วิชาที่ชื่อมีตัว a:');
  studentScores.forEach((subject, score) {
    if (subject.toLowerCase().contains('a')) {
      print('$subject: $score');
    }
  });

  print('วิชาที่คะแนนมากกว่า 50:');
  studentScores.forEach((subject, score) {
    if (score > 50) {
      print('$subject: $score');
    }
  });
}
