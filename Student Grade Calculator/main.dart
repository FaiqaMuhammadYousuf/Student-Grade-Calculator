List<Map<String, dynamic>> detailOfStudents = [
  {'name': 'John', 'marks': [80, 75, 90], 'section': 'A', 'rollNumber': 101},
  {'name': 'Emma', 'marks': [95, 92, 88], 'section': 'B', 'rollNumber': 102},
  {'name': 'Ryan', 'marks': [70, 65, 75], 'section': 'A', 'rollNumber': 103},
];

void main() {
  for (var student in detailOfStudents) {
    String name = student['name'];
    List<int> marks = List<int>.from(student['marks']);
    String grade = calculateGrade(marks);

    print('Name: $name, Grade: $grade');
  }
}

String calculateGrade(List<int> marks) {
  double averageMarks = marks.reduce((a, b) => a + b) / marks.length;
  
  if (averageMarks >= 90) {
    return 'A+';
  } else if (averageMarks >= 80) {
    return 'A';
  } else if (averageMarks >= 70) {
    return 'B';
  } else if (averageMarks >= 60) {
    return 'C';
  } else {
    return 'F';
  }
}
