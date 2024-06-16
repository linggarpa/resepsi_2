import 'package:resepsi_2/extensions/extension.dart';

String getNowLingString(List<String> names, String emoji) {
  StringBuffer sb = StringBuffer();
  for (String line in names) {
    sb.write("$emoji${"$line\n\n".toTitleCase()}");
  }
  return sb.toString();
}
