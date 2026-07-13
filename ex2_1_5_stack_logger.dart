mixin Loggable {
  void log(String msg) {
    print('[บันทึก] ${DateTime.now()}: $msg');
  }
}

class Stack<T> with Loggable {
  final List<T> _storage = [];

  void push(T element) {
    _storage.add(element);
    log('นำเข้าข้อมูล $element');
  }

  T pop() {
    if (_storage.isEmpty) {
      throw StateError('ไม่สามารถดึงข้อมูลได้เนื่องจากสแต็กว่างเปล่า');
    }
    T last = _storage.removeLast();
    log('ดึงข้อมูล $last ออกไป');
    return last;
  }

  void showStack() {
    print('ข้อมูลปัจจุบันในสแต็ก: $_storage');
  }
}

void main() {
  print('=== ทดสอบสแต็กตัวเลข ===');
  Stack<int> numberStack = Stack<int>();
  numberStack.push(10);
  numberStack.push(20);
  numberStack.showStack();
  numberStack.pop();
  numberStack.showStack();

  print('\n-----------------------------------\n');

  print('=== ทดสอบสแต็กข้อความ ===');
  Stack<String> stringStack = Stack<String>();
  stringStack.push('Dart');
  stringStack.push('Flutter');
  stringStack.showStack();
  stringStack.pop();
  stringStack.showStack();
}