import 'dart:io';

teacherlogin() {
  print("=====Hello Welcome To Teachers Portal=====");
  stdout.write("Enter Username : ");
  var username = stdin.readLineSync()!;

  stdout.write("Enter Password :");
  var password = stdin.readLineSync()!;

  if (username == "T1" && password == "123") {
    print("Successfully login");
    print(" =======WELCOME=======");
    print("Select from options given below:");
    print("1.View Attendance");
    print("2.view Marksheet");
    print("3.Add Student");
    print("4.View Students");

    stdout.write("Enter your Option :");
    var Option = stdin.readLineSync()!;
    switch (Option) {
      case '1':
        print(
            "View Attendance"); // idhr view attendance ka fuction bana kr call krdein ge
        break;
      case '2':
        print(
            "View Marksheet"); // idhr view marksheet ka fuction bana kr call krdein ge
        break;
      case '3':
        print(
            "Student Added"); // idhr add student ka fuction bana kr call krdein ge
        break;
      case '4':
        print(
            "View Students"); // idhr view student ka fuction bana kr call krdein ge
        break;
    }
  } else {
    print("Invalid Key");
  }
}

teacherPortal() {
  teacherlogin();
}
