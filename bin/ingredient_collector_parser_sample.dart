import 'package:html/parser.dart';
import 'package:http/http.dart' as http;

var url = "https://example.org/";

void main(List<String> arguments) async {
  var client = http.Client();

  var response = await client.get(Uri.parse(url));
  var document = parse(response.body);

  client.close();
}
