import 'dart:async';

Future<void> main(List<String> args) async {
  final interval = Duration(seconds: 2);
  final stream = Stream<int>.periodic(interval, callback);

  print('START');
  //* Await for
  await for (var item in stream) {
    print(item);
  }
  print('END');

}



int callback(int value) {
  print('O valor é $value');
  return (value + 1) * 2;
}
