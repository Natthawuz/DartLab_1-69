void main() async {
  print('1. เริ่ม');

  String value = await Future.delayed(Duration(seconds: 3), () 
  {
    return '2. โหลดเสร็จ';
  });
  print(value);

  print('3. จบ');
}