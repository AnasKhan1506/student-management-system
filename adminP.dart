import 'dart:io';

List students = [];

void main() {
  adminPortal();
}

void adminlogin() {
  print("=====Hello Welcome To Admin Portal=====");
  var isLogin = true;
  while (isLogin) {
    stdout.write("Enter Username : ");
    var username = stdin.readLineSync()!;

    stdout.write("Enter Password :");
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
        stdout.write("Enter your Option : ");
        option = stdin.readLineSync()!;

        if (option == "1") {
          addStudent();
        } else if (option == "2") {
          // Implement updateStudent() logic
          print("Update Student option selected");
        } else if (option == "3") {
          viewStudents();
        } else if (option == "4") {
          // Implement deleteStudent() logic
          print("Delete Student option selected");
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

addStudent() {
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

viewStudents() {
  print("In Order To see Student details");
  stdout.write("Enter Your roll no:");
  var studentRollNo = stdin.readLineSync();
  bool found = false;
  for (var student in students) {
    if (student["Student Roll No"] == studentRollNo) {
      print("Student Details:");
      print("Student Name:${student["Student Name"]}");
      found = true;
      break;
    }
  }
}

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
