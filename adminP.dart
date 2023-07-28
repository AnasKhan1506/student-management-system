import 'dart:io';

List<Map<String, dynamic>> students = [];

void main() {
  adminPortal();
}

void adminlogin() {
  print("===== Hello Welcome To Admin Portal =====");
  var isLogin = true;
  while (isLogin) {
    stdout.write("Enter Username: ");
    var username = stdin.readLineSync()!;

    stdout.write("Enter Password: ");
    var password = stdin.readLineSync()!;

    if (username == "Admin" && password == "admin123") {
      print("Successfully login");
      print("======= WELCOME =======");
      var option = '';
      while (option != "5") {
        print("Select from options given below:");
        print("1. Add Student");
        print("2. Update Student");
        print("3. View Students");
        print("4. Delete Student");
        print("5. Exit");
        stdout.write("Enter your Option: ");
        option = stdin.readLineSync()!;

        if (option == "1") {
          addStudent();
        } else if (option == "2") {
          updateStudent();
        } else if (option == "3") {
          viewStudents(students);
        } else if (option == "4") {
          deleteStudent();
        } else if (option == "5") {
          print("Exiting...");
          break;
        } else {
          print("Invalid Option");
        }
      }
      isLogin = false; // Exit the login loop after selecting Exit option
    } else {
      print("Invalid Credentials");
    }
  }
}

void adminPortal() {
  adminlogin();
}

void addStudent() {
  print("Enter Student Name:");
  var studentName = stdin.readLineSync();
  print("Enter Student Roll No:");
  var studentRollNo = stdin.readLineSync();
  print("Enter Student Grade:");
  var studentGrade = stdin.readLineSync();

  var student = {
    "Student Name": studentName,
    "Student Roll No": studentRollNo,
    "Student Grade": studentGrade
  };

  students.add(student);
  print("Student added successfully!");
}

void viewStudents(List<Map<String, dynamic>> students) {
  print("Press 1 if you want to see all the details");
  print("Press 2 if you want to see specific student detail");

  var press = stdin.readLineSync();

  if (press == "1") {
    if (students.isEmpty) {
      print("No students added yet.");
    } else {
      print("Student Details:");
      for (var student in students) {
        print("Student Name: ${student["Student Name"]}");
        print("Student Roll No: ${student["Student Roll No"]}");
        print("Student Grade: ${student["Student Grade"]}");
        print("-----------------------");
      }
    }
  } else if (press == "2") {
    if (students.isEmpty) {
      print("No students added yet.");
    } else {
      print("Enter the Student Roll No to view details:");
      var studentRollNo = stdin.readLineSync();

      bool found = false;
      for (var student in students) {
        if (student["Student Roll No"] == studentRollNo) {
          print("Student Details:");
          print("Student Name: ${student["Student Name"]}");
          print("Student Roll No: ${student["Student Roll No"]}");
          print("Student Grade: ${student["Student Grade"]}");
          found = true;
          break;
        }
      }
      if (!found) {
        print("Student with Roll No '$studentRollNo' not found.");
      }
    }
  } else {
    print("Invalid Option");
  }
}

void updateStudent() {
  if (students.isEmpty) {
    print("No students added yet.");
    return;
  }

  print("Current List of Students:");
  for (var student in students) {
    print(student["Student Name"]);
  }

  var option = '';
  while (option != "3") {
    bool cond = true;
    print("What You Want To Update?");
    print("Press 1 for Name");
    print("Press 2 for Roll No");
    print("Press 3 for Grade");

    stdout.write("Enter your Option: ");
    option = stdin.readLineSync()!;

    if (option == "1") {
      print("Current List of Names:");
      for (var student in students) {
        print(student["Student Name"]);
      }

      stdout.write("Enter the current name: ");
      var oldName = stdin.readLineSync()!;

      var studentToUpdateIndex = students.indexWhere((student) =>
          student["Student Name"] == oldName); //store oldname in new variable

      if (studentToUpdateIndex != -1) {
        stdout.write("Enter the new name: ");
        var newName = stdin.readLineSync()!;
        students[studentToUpdateIndex]["Student Name"] =
            newName; //updating old name in new name

        print("The name has been updated!");

        print("Updated List of Students:");
        for (var student in students) {
          print(student["Student Name"]);
          cond = false;
        }
        break; // Add the break statement here to exit the loop after updating the name.
      } else {
        print("Student with the name '$oldName' not found in the list.");
      }
    }

    if (option == "2") {
      print("Current List of Roll Numbers:");
      for (var student in students) {
        print(student["Student Roll No"]);
      }

      stdout.write("Enter the current Roll No: ");
      var oldRollNo = stdin.readLineSync()!;

      var studentToUpdateIndex = students
          .indexWhere((student) => student["Student Roll No"] == oldRollNo);

      if (studentToUpdateIndex != -1) {
        stdout.write("Enter the new Roll No: ");
        var newRollNo = stdin.readLineSync()!;
        students[studentToUpdateIndex]["Student Roll No"] = newRollNo;
        print("The Roll No has been updated!");

        print("Updated List of Students:");
        for (var student in students) {
          print(student["Student Roll No"]);
          cond = false;
        }
        break;
        // Add the break statement here to exit the loop after updating the Roll No.
      } else {
        print("Student with the Roll No '$oldRollNo' not found in the list.");
      }
    }
    // Add similar logic for updating Name and Grade if needed.
    // Add similar logic for updating Roll No and Grade if needed.

    if (option == "3") {
      print("Current List of Grades:");
      for (var student in students) {
        print(student["Student Grade"]);
      }

      stdout.write("Enter the current Grade: ");
      var oldGrade = stdin.readLineSync()!;

      var studentToUpdateIndex = students
          .indexWhere((student) => student["Student Grade"] == oldGrade);

      if (studentToUpdateIndex != -1) {
        stdout.write("Enter the new Grade: ");
        var newGrade = stdin.readLineSync()!;
        students[studentToUpdateIndex]["Student Grade"] = newGrade;
        print("The Grade has been updated!");

        print("Updated List of Students:");
        for (var student in students) {
          print(student["Student Grade"]);
          cond = false;
        }
        break;
        // Add the break statement here to exit the loop after updating the Roll No.
      } else {
        print("Student with the Roll No '$oldGrade' not found in the list.");
      }
    }
  }
  // Add similar logic for updating Name and Grade if needed.
  // Add similar logic for updating Roll No and Grade if needed.
}

void deleteStudent() {
  if (students.isEmpty) {
    print("No students added yet.");
    return;
  }

  print("Enter the Student Roll No to delete his records:");
  var studentNo = stdin.readLineSync()!;
  bool found = false;
  for (var student in students) {
    if (student["Student Roll No"] == studentNo) {
      print("The record is deleting!");

      print("Student Name: ${student["Student Name"]}");
      print("Student Roll No: ${student["Student Roll No"]}");
      print("Student Grade: ${student["Student Grade"]}");
      print("The record has been deleted");
      students
          .removeWhere((element) => student["Student Roll No"] == studentNo);
      found = true;
      break;
    }
  }

  if (!found) {
    print("Student with Roll No '$studentNo' not found.");
  }
}

// import 'dart:io';

// List students = [];

// void main() {
//   adminPortal();
// }

// void adminlogin() {
//   print("=====Hello Welcome To Admin Portal=====");
//   var isLogin = true;
//   while (isLogin) {
//     stdout.write("Enter Username : ");
//     var username = stdin.readLineSync()!;

//     stdout.write("Enter Password :");
//     var password = stdin.readLineSync()!;

//     if (username == "Admin" && password == "admin123") {
//       print("Successfully login");
//       print("======= WELCOME =======");
//       var option = '';
//       while (option != "5") {
//         print("Select from options given below:");
//         print("1. Add Student");
//         print("2. Update Student");
//         print("3. View Students");
//         print("4. Delete Student");
//         print("5. Exit");
//         stdout.write("Enter your Option : ");
//         option = stdin.readLineSync()!;

//         if (option == "1") {
//           addStudent();
//         } else if (option == "2") {
//           updateStudent();
//         } else if (option == "3") {
//           viewStudents(students);
//         } else if (option == "4") {
//           deleteStudent();
//         } else if (option == "5") {
//           print("Exiting...");
//           break;
//         } else {
//           print("Invalid Option");
//         }
//       }
//       isLogin = false; // Exit the login loop after selecting Exit option
//     } else {
//       print("Invalid Credentials");
//     }
//   }
// }

// void adminPortal() {
//   adminlogin();
// }

// addStudent() {
//   print("Enter Student Name:");
//   var studentName = stdin.readLineSync();
//   print("Enter Student Roll No:");
//   var studentRollNo = stdin.readLineSync();
//   print("Enter Student Grade:");
//   var studentGrade = stdin.readLineSync();

//   var student = {
//     "Student Name": studentName,
//     "Student Roll No": studentRollNo,
//     "Student Grade": studentGrade
//   };

//   students.add(student);
//   print("Student added successfully!");
// }

// void viewStudents() {
//   print("Press 1 if you want to see all the details");
//   print("Press 2 if you want to see specific student detail");

//   var press = stdin.readLineSync();

//   if (press == "1") {
//     print("Student Details:");
//     for (var student in students) {
//       print("Student Name: ${student["Student Name"]}");
//       print("Student Roll No: ${student["Student Roll No"]}");
//       print("Student Grade: ${student["Student Grade"]}");
//       print("-----------------------");
//     }
//   } else if (press == "2") {
//     print("Enter the Student Roll No to view details:");
//     var studentRollNo = stdin.readLineSync();

//     bool found = false;
//     for (var student in students) {
//       if (student["Student Roll No"] == studentRollNo) {
//         print("Student Details:");
//         print("Student Name: ${student["Student Name"]}");
//         print("Student Roll No: ${student["Student Roll No"]}");
//         print("Student Grade: ${student["Student Grade"]}");
//         found = true;
//         break;
//       }
//     }
//     if (!found) {
//       print("Student with Roll No '$studentRollNo' not found.");
//     }
//   } else {
//     print("Invalid Option");
//   }
// }

// void updateStudent() {
//   print("Current List of Students:");
//   for (var student in students) {
//     print(student["Student Name"]);
//   }

//   var option = '';
//   while (option != "3") {
//     print("What You Want To Update?");
//     print("press 1 for name :");
//     print("press 2 for roll no :");
//     print("press 3 for grade :");

//     stdout.write("Enter your Option : ");
//     var option1 = stdin.readLineSync()!;
//     if (option1 == "1") {
//       print("Current List of Names:");
//       for (var student in students) {
//         print(student["Student Name"]);
//       }

//       //print("What name do you want to update?");
//       var oldName = stdin.readLineSync()!;

//       var studentToUpdateIndex =
//           students.indexWhere((student) => student["Student Name"] == oldName);

//       if (studentToUpdateIndex != -1) {
//         stdout.write("Enter the new name: ");
//         var newName = stdin.readLineSync()!;
//         students[studentToUpdateIndex]["Student Name"] = newName;
//         print("The name has been updated!");

//         print("Updated List of Students:");
//         for (var student in students) {
//           print(student["Student Name"]);
//         }
//       } else {
//         print("Student with the name '$oldName' not found in the list.");
//       }
//     }
//   }
// }

// deleteStudent() {
//   print("Enter the Student Roll No to Delete his  Records:");
//   var studentNo = stdin.readLineSync();
//   bool found = false;
//   for (var student in students) {
//     if (student["Student Roll No"] == studentNo) {
//       //List k andr access krrhy
//       print("The record is deleting!");

//       print(" ${student["Student Name"]}");
//       print(
//           " ${student["Student Roll No"]}"); // yh 3no value list k andr map ki form m store hui vi
//       print(" ${student["Student Grade"]}");
//       print("The record has been deleted");
//       students
//           .removeWhere((element) => student["Student Roll No"] == studentNo);
//       found = true;
//       break;
//     }
//   }

//   if (!found) {
//     print("Student with Roll No '$studentNo' not found.");
//   }
// }
// updateStudent() {
//   var option = "";
//   print(students);
//   // print("What You Want To Update?");
//   // print("press 1 for name :");
//   // print("press 2 for roll no :");
//   // print("press 3 for grade :");
//   // var option = '';
//   while (option != "3") {
//     print("What You Want To Update?");
//     print("press 1 for name :");
//     print("press 2 for roll no :");
//     print("press 3 for grade :");

//     stdout.write("Enter your Option : ");
//     var option1 = stdin.readLineSync()!;
//     if (option == "1") {
//       for (var list in students) {
//         print(list["Student Name"]);
//       }
//       print("What name You want to update");
//       if (option1 == students["Student Name"])
//       students.remove("Student Name");
//       var new_Name = stdin.readLineSync();
//       students.add(new_Name);
//       print("The List has been updated");
//       print(students);
//     }
//   }
// }
// print("Enter Student Name:");
// var studentName = stdin.readLineSync();
// print("Enter Student Roll No:");
// var studentRollNo = stdin.readLineSync();
// print("Enter Student Grade:");
// var studentGrade = stdin.readLineSync();

// var student = {
//   "Student Name": studentName,
//   "Student Roll No": studentRollNo,
//   "Student Grade": studentGrade
// };

// students.add(student);
// print("Student added successfully!");
// viewStudents() {
//   print("In Order To see Student details");
//   stdout.write("Enter Your roll no:");
//   var studentRollNo = stdin.readLineSync();
//   bool found = false;
//   for (var student in students) {
//     if (student["Student Roll No"] == studentRollNo) {
//       print("Student Details:");
//       print("Student Name:${student["Student Name"]}");
//       found = true;
//       break;
//     }
//   }

// var viewStudent =
//     students.where((e) => e["Student Roll No"] == studentRollNo).toList();
// if (viewStudent.isNotEmpty) {
//   print("Student Details:");
//   for (var students in viewStudent) {
//     print("Student Name: ${students["studentName"]}");
//   }
// }

//  else {
//   for (var i = 0; i < students.length; i++) {
//     print("$i. Student: ${students[i]}");
//   }
// }

/*import 'dart:io';

List students = [];
void main() {
  adminPortal();
}

adminlogin() {
  print("=====Hello Welcome To Admin Portal=====");
  //print("Enter Username:");
  //print("Enter Password:");
  //var Username='Admin';
  //var Password='admin123';
  var isLogin = true;
  while (isLogin) {
    stdout.write("Enter Username : ");
    var username = stdin.readLineSync()!;

    stdout.write("Enter Password :");
    var password = stdin.readLineSync()!;

    if (username == "Admin" && password == "admin123") {
      print("Successfully login");
      print(" =======WELCOME=======");
      print("Select from options given below:");
      print("1.Add Student");
      print("2.Update Student");
      print("3.View Student");
      print("4.Delete Student");
      stdout.write("Enter your Option :");
      var Option = stdin.readLineSync();
      if (Option == "1") {
        addStudent();
      } else if (Option == "2") {
        "updateStudent";
      } else if (Option == "3") {
        viewStudent();
      } else if (Option == "4") {
        "deleteStudent";
      }
    } else {
      print("Invalid Key");
      isLogin = false;
    }
    /*switch (Option) {
        case '1':
          addStudent();
          // idhr add student ka fuction bana kr call krdein ge
          break;
        case '2':
          print(
              "student updated"); // idhr update student ka fuction bana kr call krdein ge
          break;
        case '3':
          viewStudent(); // idhr view student ka fuction bana kr call krdein ge
          break;
        case '4':
          print(
              "student deleted"); // idhr delete student ka fuction bana kr call krdein ge
          break;
      }*/
  }
}

adminPortal() {
  adminlogin();
}

addStudent() {
  print("Enter Student name :");
  var studentName = stdin.readLineSync();
  print("Enter Student Roll no :");
  var studentRollno = stdin.readLineSync();
  print("Enter Student Grade :");
  var studentGrade = stdin.readLineSync();
  Map student = {
    "Student name": studentName,
    "Student Roll num": studentRollno,
    "Student Grade": studentGrade
  };
  //var stname = stdin.readLineSync();
  students.add("$student");
  print("Student edit Succesfully -> $student");
}

viewStudent() {
  for (var i = 0; i < students.length; i++) {
    print("$i. Student List :${students[i]}");
  }
}
*/
