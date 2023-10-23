import 'package:html/dom.dart';
import 'package:html/parser.dart' show parse;
import 'package:http/http.dart' as http;

var urls = [
  "https://example.org"
];

void main(List<String> arguments) async {
  var client = http.Client();

  for (var url in urls) {
    var response = await client.get(Uri.parse(url));
    var document = parse(response.body);

    retrieveRecipeTitle(document);
    retrieveRecipeServings(document);
    retrieveRecipeIngredients(document);
  }

  client.close();
}

void retrieveRecipeTitle(Document document) {
  // TODO: Retrieve the recipe title from the document
}

void retrieveRecipeServings(Document document) {
  // TODO: Retrieve the recipe servings from the document
}

void retrieveRecipeIngredients(Document document) {
  // TODO: Retrieve the recipe ingredients from the document
}

void retrieveRecipeSingleIngredient(Element element) {
  // TODO: Retrieve a single recipe ingredient from the element
}
