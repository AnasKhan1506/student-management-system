import 'dart:io';
import 'adminP.dart';
import 'studentP.dart';
import 'teacherP.dart';

void main() {
  displayFeatures();
}

displayFeatures() {
  print("======Welcome To School Management System======");
  var isContinue = true;
  while (isContinue) {
    print("=====Login Page=====");
    print("press 1 for Admin Portal :");
    print("press 2 for Teacher Portal :");
    print("press 3 for Student Portal :");
    print("press 4 for Exit : ");

    var userInput1 = stdin.readLineSync();
    if (userInput1 == "1") {
      adminPortal();
    } else if (userInput1 == "2") {
      teacherPortal();
    } else if (userInput1 == "3") {
      studentPortal();
    } else {
      print("program ended , Thank U");
      isContinue = false;
    }
  }
}
