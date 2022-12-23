import 'dart:html';
import 'package:markdown/markdown.dart';

import 'constants.dart';

class ItemUrlPolicy implements UriPolicy {
  RegExp regex = RegExp(r'(?:http://|https://)?.*');

  @override
  bool allowsUri(String uri) {
    return regex.hasMatch(uri);
  }
}
void main() async {
  final NodeValidatorBuilder htmlValidator = NodeValidatorBuilder.common()
    ..allowElement('A', attributes: ['data-target', 'data-toggle', 'href'])
    ..allowElement('button', attributes: ['data-target', 'data-toggle'])
    ..allowHtml5(uriPolicy: ItemUrlPolicy())
    ..allowNavigation(ItemUrlPolicy());
  querySelector('#output')!
    ..setInnerHtml(
        markdownToHtml(Constants.content()),
        validator: htmlValidator)
    ..animate([
      {"opacity": 0},
      {"opacity": 1}
    ], {
      "duration": 2000,
      "fill": "forwards"
    });
}
