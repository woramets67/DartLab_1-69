Stream<String> countdown(int from) async* {
  for (int i = from; i >= 1; i--) {
    await Future.delayed(Duration(seconds: 1));
    yield '$i';
  }
  await Future.delayed(Duration(seconds: 1));
  yield 'หมดเวลา!';
}

void main() async {
  await for (var value in countdown(5)) {
    print(value);
  }
}
