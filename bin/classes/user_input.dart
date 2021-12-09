import 'dart:io';

class UserInput {
  String key = "";
  String queryText = "";

  void getUserInput() {
    stdout.write("Please enter your query:   ");
    queryText = stdin.readLineSync().toString();
    stdout.write("\n");

    stdout.write("Please enter key:   ");
    key = stdin.readLineSync().toString();
    stdout.write("\n");
  }

  String get keyInput {
    return key;
  }

  String get queryInput {
    return queryText;
  }
}
