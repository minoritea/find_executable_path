import 'dart:io';
import 'package:path/path.dart' as p;

void main(List<String> arguments) {
  var path = p.split(Platform.resolvedExecutable);
  print('["' + path.join('","') + '"]');
  var isDepthLT7 = path.length < 7;
  print('Is path depth lower than 7?: $isDepthLT7');
  final flutterIndex = path.lastIndexOf('flutter');
  var isFlutterInPath = flutterIndex > path.length - 7;
  print('Is flutter directory in path?: $isFlutterInPath');
}
