import 'dart:io';

void main(List<String> args) async {
  var file = File('lib/9_files/files/file.txt');

              //* ------------- //*
              //* READING FILES //*
              //* ------------- //*

  //* Synchronous reading
  var dataFromFileSync = file.readAsStringSync();
  print(dataFromFileSync);

  //* Asynchronous reading
  var dataFromFileAsync = await file.readAsString();
  print(dataFromFileAsync);

  //* Line reading synchronous
  var dataAsListFromFileSync = file.readAsLinesSync();
  print(dataAsListFromFileSync);

  //* Line reading asynchronous
  var dataAsListFromFileAsync = await file.readAsLines();
  print(dataAsListFromFileAsync);


              //* ------------- //*
              //* WRITING FILES //*
              //* ------------- //*

  var file2 = File('lib/9_files/files/file2.txt');
  await file2.writeAsString('Matheus Lima\n', mode: FileMode.append);
  file2.writeAsStringSync('Matheus Lima\n', mode: FileMode.append);

  var listaNomes = ['Rodrigo Rahman', 'Luana', 'João'];
  var file3 = File('lib/9_files/files/file3.txt');
  var writeFile = file3.openWrite(mode: FileMode.append);

  for (var nome in listaNomes) {
    writeFile.write('$nome\n');
  }
}
