
Future<void> getData () async {
  print('delay start');
  await Future.delayed(Duration(seconds: 3));
  print('delay end 1');
  await Future.delayed(Duration(seconds: 3));
  print('delay end 2');
}

void main() {
  final f = getData();
  f.then((value) {
    print('hello from then main');
  });
}