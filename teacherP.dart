import 'dart:io';

teacherlogin() {
  print("=====Hello Welcome To Teachers Portal=====");
  stdout.write("Enter Username : ");
  var username = stdin.readLineSync()!;

  stdout.write("Enter Password :");
  var password = stdin.readLineSync()!;

  if (username == "Teacher" && password == "123") {
    print("Successfully login");
    print(" =======WELCOME=======");
    print("Select from options given below:");
    print("1.Attendance");
    print("2.Make Marksheet");
    print("3.Add Student");
    print("4.View Students");

    stdout.write("Enter your Option :");
    var Option = stdin.readLineSync()!;
    switch (Option) {
      case '1':
        attendanceMain(); // idhr view attendance ka fuction bana kr call krdein ge
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
        print('View Attandance');
        break;

      case 3:
        print('Exit');
        break;
    }
  }
}

markAttendance() {
  String name;
  int roll;
  var Present;
  Map<int, dynamic> Students = {};

  stdout.write('Enter Name :');
  name = stdin.readLineSync()!;

  stdout.write('Enter Roll No :');
  roll = int.parse(stdin.readLineSync()!);

  stdout.write('Enter your choice From ( P/A) : ');
  Present = stdin.readLineSync()!;

  var Attendance = Students;
  Attendance[roll] = Students;

  print('Attendance marked successfully for $name (Roll No: $roll)');
}
