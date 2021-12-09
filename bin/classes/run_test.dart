import 'package:http/http.dart' as http;

class RunTest {
  var urlXML = Uri.parse(
      "https://maps.googleapis.com/maps/api/place/textsearch/xml?query=walmart&key=AIzaSyAnoLJ8R2z03nivbtkwoEXd03Tj8W_o1zk");

  var urlJSON = Uri.parse(
      "https://maps.googleapis.com/maps/api/place/textsearch/json?query=walmart&key=AIzaSyAnoLJ8R2z03nivbtkwoEXd03Tj8W_o1zk");

  // ignore: prefer_typing_uninitialized_variables
  var dataResponse;

  Future<void> getXMLData() async {
    dataResponse = await http.get(urlXML);
    print("*****Printing XML data*****");
    print(dataResponse.body);
    print("*****Printing of XML data completed!!!*****\n");
  }

  Future<void> getJSONData() async {
    dataResponse = await http.get(urlJSON);
    print("*****Printing JSON data*****");
    print(dataResponse.body);
    print("*****Printing of JSON data completed!!!*****");
  }
}
