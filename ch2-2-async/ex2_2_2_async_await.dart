Future<void> loadData() async {
  await Future.delayed(Duration(seconds: 3));
  print('2. โหลดเสร็จ');
}

void main() async {
  print('1. เริ่ม');
  await loadData();
  print('3. จบ');
}
