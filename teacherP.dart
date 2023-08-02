import 'dart:io';
import 'adminP.dart';

teacherlogin() {
  print("=====Hello Welcome To Teachers Portal=====");
  stdout.write("Enter Username : ");
  var username = stdin.readLineSync()!;

  stdout.write("Enter Password :");
  var password = stdin.readLineSync()!;
  print("Successfully login");
  bool cond = true;
  while (cond = true) {
    if (username == "teacher" && password == "123") {
      print(" =======WELCOME=======");
      print("Select from options given below:");
      print("1.Attendance");
      print("2.Make Marksheet");
      print("3.Add Student");
      print("4.View Students");
      print("5.Exit");
      stdout.write("Enter your Option :");
      var option = stdin.readLineSync()!;
      if (option == "1") {
        markAttendance();
      } else if (option == "2") {
        makeResult();
      } else if (option == "3") {
        addStudent();
      } else if (option == "4") {
        viewStudents(students);
      } else if (option == "5") {
        print("Exiting...");
        break;
      }
    } else {
      print("Invalid Key");
      cond = false;
    }
  }
}

teacherPortal() {
  teacherlogin();
}

attendanceMain() {
  var T = true;
  while (T) {
    print("1.Mark Attendance of Students :");
    print("2.View Attendance :");
    print("3.Exit :");

    stdout.write("Select from Options Below : ");
    int options = int.parse(stdin.readLineSync()!);

    switch (options) {
      case 1:
        //print('Attendance Marked');
        markAttendance();
        break;

      case 2:
        viewAttendance();
        break;

      case 3:
        T = false;
        break;
    }
  }
}

List attendanceSheet = [];

markAttendance() {
  print('Enter  Name :');
  var name = stdin.readLineSync()!;
  print('Enter Roll No :');
  var roll = stdin.readLineSync()!;
  print('Enter your choice From ( P/A) : ');
  var present = stdin.readLineSync()!;

  var attendance = {
    "Student name": name,
    "Student Roll no": roll,
    "Student Present": present
  };
  attendanceSheet.add(attendance);

  print('Attendance marked successfully for $name (Roll No: $roll)');
}

viewAttendance() {
  if (attendanceSheet.isEmpty) {
    print("No Student added yet");
  } else {
    print("Attendance Sheet:");
    for (var student in attendanceSheet) {
      print("Student Name: ${student["Student name"]}");
      print("Student Roll No: ${student["Student Roll no"]}");
      print("Student Attendance: ${student["Student Present"]}");
      print("=============================");
    }
  }
}

void makeResult() {
  List<Map<String, dynamic>> studentsData = [];

  while (true) {
    print('Enter student name:');
    String? studentName = stdin.readLineSync();
    if (studentName == null || studentName.trim().isEmpty) {
      print('Invalid input. Please enter a valid student name.');
      continue;
    }

    print('Enter roll number:');
    int? rollNumber = int.tryParse(stdin.readLineSync()!);
    if (rollNumber == null) {
      print('Invalid input. Please enter a valid roll number.');
      continue;
    }

    print('Enter marks for Maths:');
    int? mathematics = int.tryParse(stdin.readLineSync()!);
    if (mathematics == null) {
      print('Invalid input. Please enter a valid marks value for Maths.');
      continue;
    }

    print('Enter marks for Science:');
    int? science = int.tryParse(stdin.readLineSync()!);
    if (science == null) {
      print('Invalid input. Please enter a valid marks value for Science.');
      continue;
    }

    print('Enter marks for English:');
    int? english = int.tryParse(stdin.readLineSync()!);
    if (english == null) {
      print('Invalid input. Please enter a valid marks value for English.');
      continue;
    }

    print('Enter marks for Social Studies:');
    int? sst = int.tryParse(stdin.readLineSync()!);
    if (sst == null) {
      print(
          'Invalid input. Please enter a valid marks value for Social Studies.');
      continue;
    }

    print('Enter marks for Urdu:');
    int? urdu = int.tryParse(stdin.readLineSync()!);
    if (urdu == null) {
      print('Invalid input. Please enter a valid marks value for Urdu.');
      continue;
    }

    var totalMarks = mathematics + science + english + sst + urdu;
    var percentage = (totalMarks / 500) * 100;

    studentsData.add({
      'Student Name': studentName,
      'Roll Number': rollNumber,
      'MATHS': mathematics,
      'SCIENCE': science,
      'ENGLISH': english,
      'SOCIAL STUDIES': sst,
      'URDU': urdu,
      'Percentage': percentage,
    });

    print('Marks entered successfully!');

    print('---------------------------------------');
    print('Do you want to continue? (Y/N)');
    String choice = stdin.readLineSync()!;
    if (choice == 'N') {
      break;
    }
  }

  // Displaying data in tabular form
  print('\n');
  print(
      '--------------------------------------------------------------------------------------------------------------------------');
  print(
      'Student Name\tRoll Number\tMaths\tScience\tEnglish\tSocial Studies\tUrdu\tPercentage');
  print(
      '-------------------------------------------------------------------------------------------------------------------------');
  for (var student in studentsData) {
    print(
        '${student['Student Name']}\t\t${student['Roll Number']}\t\t${student['MATHS']}\t${student['SCIENCE']}\t${student['ENGLISH']}\t\t${student['SOCIAL STUDIES']}\t${student['URDU']}\t${student['Percentage'].toStringAsFixed(2)}%');
  }
  print(
      '-------------------------------------------------------------------------------------------------------------------------');
}

// makeResult() {
//   // teacher panel mein makeresult ki logic hai..

//   while (true) {
//     List makeresult = [];

//     print('Enter student name:');
//     String studentName = stdin.readLineSync()!;

//     print('Enter roll number:');
//     int rollNumber = int.parse(stdin.readLineSync()!);

//     print('Enter marks for Maths:');
//     int mathematics = int.parse(stdin.readLineSync()!);

//     print('Enter marks for Science:');
//     int science = int.parse(stdin.readLineSync()!);

//     print('Enter marks for English:');
//     int english = int.parse(stdin.readLineSync()!);

//     print('Enter marks for Social Studies:');
//     int sst = int.parse(stdin.readLineSync()!);

//     print('Enter marks for Urdu:');
//     int urdu = int.parse(stdin.readLineSync()!);
//     var total_marks = mathematics + science + english + sst + urdu;
//     var percentage = total_marks / 5;
//     percentage * 100;
//     print("the percentage of $studentName is $percentage");
//     var students = {
//       "Student Name": studentName,
//       'Roll Number': rollNumber,
//       'MATHS': mathematics,
//       'SCIENCE': science,
//       'ENGLISH': english,
//       'SOCIALSTUDIES': sst,
//       'URDU': urdu,
//     };
//     makeresult.add(students);
//     print('Marks entered successfully!');

//     print('---------------------------------------');
//     print('Do To Want To Continue ? (Y/N)');
//     String choice = stdin.readLineSync()!;
//     if (choice == 'Y') {
//       break; //yahan pe y pe code dobara chale gaw new entry ky liye...
//     } else if (choice == "N") {
//       // print('\n');
//       // print('---------------------------------------------------------');
//       // print(
//       //     'Student Name        Roll Number        Maths       Science        English        Social Studies        Urdu        Percentage');
//       // print('---------------------------------------------------------');
//       for (var student in makeresult) {
//         print(
//             'Student Name :${student['Student Name']}Student Roll No:${student['Roll Number']}Student Marks:${student['MATHS']}${student['SCIENCE']}${student['ENGLISH']}${student['SOCIAL STUDIES']}${student['URDU']}${student['Percentage']}');
//       }
//       print('---------------------------------------------------------');
//     }
//   }
// }
