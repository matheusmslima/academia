import 'dart:async';

Future<void> main(List<String> args) async {
  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(
    interval,
    callback,
  );
  stream = stream.take(5).skip(2);

  print('START');
  //* Await for
  await for (var item in stream) {
    print('Valor que chega no await for: $item.');
    print(item);
  }
  print('END');
}

int callback(int value) {
  print('Valor que chega na funcao callback: $value.');
  return (value + 1) * 2;
}
