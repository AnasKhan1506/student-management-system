import 'dart:io';

teacherlogin() {
  print("=====Hello Welcome To Teachers Portal=====");
  stdout.write("Enter Username : ");
  var username = stdin.readLineSync()!;

  stdout.write("Enter Password :");
  var password = stdin.readLineSync()!;

  if (username == "teacher" && password == "123") {
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
        viewAttendance();
        break;

      case 3:
        print('Exit');
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
