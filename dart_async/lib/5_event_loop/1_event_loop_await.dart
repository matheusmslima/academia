import 'dart:async';

Future<void> main() async {
  print('Inicio main');
  scheduleMicrotask(() => print('Microtask #1'));
  print(DateTime.now());
  await Future.delayed(Duration(seconds: 1), () => print('Future #1 delayed'));

  await Future(() {
    var i = 0;
    while (i < 2000000) {
      i++;
    }
    print('Future #2');
  });
  scheduleMicrotask(() => print('Microtask #2'));

  Future(() => print('Future #3'));

  print('Fim main');
}
