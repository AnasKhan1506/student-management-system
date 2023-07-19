import 'dart:io';

studentlogin() {
  print("=====Hello Welcome To Student Portal=====");
  stdout.write("Enter Username : ");
  var username = stdin.readLineSync()!;

  stdout.write("Enter Password :");
  var password = stdin.readLineSync()!;

  if (username == "std1" && password == "123") {
    print("Successfully login");
    print(" =======WELCOME=======");
    print("Select from options given below:");
    print("1.View Attendance");
    print("2.view Marksheet");

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
    }
  } else {
    print("Invalid Key");
  }
}

studentPortal() {
  studentlogin();
}
