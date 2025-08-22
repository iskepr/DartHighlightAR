import 'package:highlight/highlight_core.dart' show highlight;
import 'package:highlight/languages/alif.dart';

void main() {
  var source = '''دالة رئيسية() {
  اطبع("السلام عليكم")
  اطبع(٩ + 4)
}
''';

  highlight.registerLanguage('alif', alif);

  var result = highlight.parse(source, language: 'alif');
  var html = result.toHtml();
  print(html); // HTML string
}
