import 'classes/run_test.dart';
import 'classes/user_input.dart';
import 'classes/opening_screen.dart';

Future<void> main(List<String> arguments) async {
  SplashScreen.getSplashScreen();

  UserInput input = UserInput();
  input.getUserInput();

  RunTest run = RunTest(input.keyInput, input.queryInput);

  await run.getXMLData();

  await run.getJSONData();
}
