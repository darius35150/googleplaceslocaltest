import 'dart:io';

import 'package:http/http.dart' as http;

class RunTest {
  String key = "";
  String queryText = "";

  



  // ignore: prefer_typing_uninitialized_variables
  var dataResponse;

  RunTest(this.key, this.queryText);

  Future<void> getXMLData() async {

    var urlXML = Uri.parse(
      "https://maps.googleapis.com/maps/api/place/textsearch/xml?query=$queryText&key=$key");

    dataResponse = await http.get(urlXML);
    print("*****Printing XML data*****");
    print(dataResponse.body);
    print("*****Printing of XML data completed!!!*****\n");
  }

  Future<void> getJSONData() async {

    var urlJSON = Uri.parse(
      "https://maps.googleapis.com/maps/api/place/textsearch/json?query=$queryText&key=$key");

    dataResponse = await http.get(urlJSON);
    print("*****Printing JSON data*****");
    print(dataResponse.body);
    print("*****Printing of JSON data completed!!!*****");

    sleep(const Duration(minutes: 5));
  }
}
