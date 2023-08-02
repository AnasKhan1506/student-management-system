import 'dart:io';
import 'teacherP.dart';

studentlogin() {
  print("=====Hello Welcome To Student Portal=====");
  stdout.write("Enter Username : ");
  var username = stdin.readLineSync()!;

  stdout.write("Enter Password :");
  var password = stdin.readLineSync()!;

  if (username == "student" && password == "123") {
    print("Successfully login");
    print("=======WELCOME=======");
    print("Select from options given below:");
    print("1. View Attendance");
    print("2. View Marksheet");
    bool cond = true;
    while (cond) {
      stdout.write("Enter your Option :");
      var option = stdin.readLineSync()!;

      if (option == "1") {
        print("Enter your Roll no to check attendance:");
        viewAttendance();
      } else if (option == "2") {
        print("Enter your Roll no to check your Marksheet:");
        viewMarksheet();
      } else {
        print("Invalid Option");
      }
      stdout.write("Do you want to continue (yes/no)?: ");
      var continueOption =
          stdin.readLineSync()!.toLowerCase(); // this logic from chatgpt
      cond = continueOption == 'yes';
      // Ask if the user wants to continue
    }
  } else {
    print("Invalid username or password");
  }
}

studentPortal() {
  studentlogin();
}

void viewAttendance() {
  var roll_no = stdin.readLineSync();
  bool found = false;
  for (var student in attendanceSheet) {
    if (roll_no == student["Student Roll no"]) {
      print("Student Attendance:");
      print("----------------------");
      print("Student Name: ${student["Student name"]}");
      print("Student Roll No: ${student["Student Roll no"]}");
      print("Attendance: ${student["Student Present"]}");
      print("----------------------");
      found = true;
      break;
    }
  }

  if (!found) {
    print("Student with Roll No '$roll_no' not found.");
  }
}

void viewMarksheet() {
  var roll_no = int.tryParse(stdin.readLineSync()!);
  bool found = false;
  for (var student in studentsData) {
    if (roll_no == student["Roll Number"]) {
      // Corrected "Student Roll no" to "Roll Number"
      print("Student Marksheet:");
      print('\n');
      print(
          '--------------------------------------------------------------------------------------------------------------------------');
      print(
          'Student Name\tRoll Number\tMaths\tScience\tEnglish\tSocial Studies\tUrdu\tPercentage');
      print(
          '-------------------------------------------------------------------------------------------------------------------------');
      print(
          '${student['Student Name']}\t\t${student['Roll Number']}\t\t${student['MATHS']}\t${student['SCIENCE']}\t${student['ENGLISH']}\t\t${student['SOCIAL STUDIES']}\t${student['URDU']}\t${student['Percentage'].toStringAsFixed(2)}%');
      print(
          '-------------------------------------------------------------------------------------------------------------------------');
      if (student['Percentage'] <= 50) {
        print("${student['Student Name']} Grade is F ,Very Poor");
      } else if (student['Percentage'] <= 60) {
        print("${student['Student Name']} Grade is C ,Very Bad");
      } else if (student['Percentage'] <= 70) {
        print("${student['Student Name']} Grade is B ,Good Job");
      } else if (student['Percentage'] <= 80) {
        print("${student['Student Name']} Grade is A ,Excellent Job");
      } else if (student['Percentage'] <= 100) {
        print("${student['Student Name']} Grade is A+ ,Marvellous");
      }
      if (!found) {
        print("Student with Roll No '$roll_no' not found.");
      }
    }
    found = true;

    break;
  }
}

 


// import 'dart:io';
// import 'teacherP.dart';

// studentlogin() {
//   print("=====Hello Welcome To Student Portal=====");
//   stdout.write("Enter Username : ");
//   var username = stdin.readLineSync()!;

//   stdout.write("Enter Password :");
//   var password = stdin.readLineSync()!;

//   if (username == "student" && password == "123") {
//     print("Successfully login");
//     print(" =======WELCOME=======");
//     print("Select from options given below:");
//     print("1.View Attendance");
//     print("2.view Marksheet");
//     bool cond = true;
//     stdout.write("Enter your Option :");
//     var Option = stdin.readLineSync()!;
//     while (cond == true) {
//       if (Option == "1") {
//         print("Enter your Roll no to check attendance:");

//         viewAttendance();
//       }
//     }
//   }
// }

// studentPortal() {
//   studentlogin();
// }

// void viewAttendance() {
//   var roll_no = stdin.readLineSync();
//   bool found = false;
//   for (var student in attendanceSheet) {
//     if (roll_no == student["Student Roll no"]) {
//       print("Student Attendance:");
//       print("----------------------");
//       print("Student Name: ${student["Student name"]}");
//       print("Student Roll No: ${student["Student Roll no"]}");
//       print("Attendance: ${student["Student Present"]}");
//       print("----------------------");
//       found = true;
//       break;
//     }
//   }

//   if (!found) {
//     print("Student with Roll No '$roll_no' not found.");
//   }
// }
// // viewAttendance() {
// //   print("Enter your Roll no to check attendance :");
// //   String roll_no = stdin.readLineSync()!;
// //   bool found = true;
// //   while (found = true) {
// //     for (var student in attendanceSheet) {
// //       if (roll_no == student["Student Roll no"]) {
// //         print("Student Attendance:");
// //         print("----------------------");
// //         print("Student Name:${student["Student name"]}");
// //         print("Student Roll No:${student["Student Roll no"]}");
// //         print("Attendance:${student["Student Present"]}");
// //         print("----------------------");

// //         found = false;
// //       }
// //       if (roll_no == !student["Student Roll no"]) {
// //         print("Student with Roll No '$roll_no' not found.");
// //       }
// //     }
// //   }
// // }
