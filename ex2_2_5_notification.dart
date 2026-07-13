import 'dart:async';

void main() {
  StreamController<String> controller = StreamController<String>();

  controller.stream.listen(
    (notification) {
      print('แจ้งเตือนใหม่: $notification');
    },
    onDone: () {
      print('ปิดระบบแจ้งเตือนเรียบร้อยแล้ว!');
    },
  );

  controller.add('แจ้งเตือน1');
  controller.add('แจ้งเตือน2');
  controller.add('แจ้งเตือน3');

  controller.close();
}