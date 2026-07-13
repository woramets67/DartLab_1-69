import 'dart:async';

void main() {
  final controller = StreamController<String>();

  controller.stream.listen(
    (message) {
      print('แจ้งเตือน: $message');
    },
    onDone: () {
      print('สตรีมสิ้นสุดแล้ว');
    },
  );

  controller.add('มีข้อความใหม่ 1 รายการ');
  controller.add('แบตเตอรี่เหลือ 20%');
  controller.add('อัปเดตพร้อมติดตั้ง');

  controller.close();
}
