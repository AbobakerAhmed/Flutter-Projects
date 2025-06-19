// Date: Tue, 7th of Jan 2025
// Abobaker Ahmed Khidir Hassan
// Course: Dart 101
// Platform: Satr.codes
// Course Link: https://satr.codes/course/NnYmxKiqYY/view?course_path_id=OHarLRCHae

/*
    Final Project: Printing Grades of the Students
*/

void main() {
  // setting names and grades
  List<String> names = ['Khalid', 'Ali', 'Sameer'];
  List<double> grades = [99.3, 87.7, 65.7];

  // printing the grades
  for (int i = 0; i < names.length; i++) {
    String gradeLetter = getGrade(grades[i]);
    print('${names[i]} $gradeLetter');
  } // for
} // main

// optaining the letter from the grade
String getGrade(double grade) {
  // checking the range of the grade
  if (grade < 0 && 100 < grade) {
    print("The grade is not in the range [0,100]!");
    return "";
  } // if

  // classification of the grade
  else {
    if (95 <= grade)
      return 'A+';
    else if (90 <= grade)
      return 'A';
    else if (85 <= grade)
      return 'B+';
    else if (80 <= grade)
      return 'B';
    else if (75 <= grade)
      return 'C+';
    else if (70 <= grade)
      return 'C';
    else if (65 <= grade)
      return 'D+';
    else if (60 <= grade)
      return 'D';
    else
      return 'F';
  } //else
} // getGrade

