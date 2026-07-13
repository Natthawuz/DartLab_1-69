Future<Map<String, dynamic>> fetchProfile(int userId) async {
  await Future.delayed(Duration(seconds: 2));

  if (userId <= 0) {
    throw Exception('ไม่พบข้อมูล: ID ของผู้ใช้ต้องมากกว่า 0');
  }

  return {
    'id': userId,
    'name': 'Natthawut',
    'role': 'Developer',
  };
}

void main() async {
  print('=== [กรณีที่ 1] ทดสอบ ID ที่ถูกต้อง (userId = 5) ===');
  try {
    var profile = await fetchProfile(5);
    print('โหลดสำเร็จ: $profile');
  } catch (e) {
    print('เกิดข้อผิดพลาด: $e');
  } finally {
    print('สถานะ: จบการทำงานในกรณีที่ 1\n');
  }

  print('=== [กรณีที่ 2] ทดสอบ ID ที่ผิดพลาด (userId = 0) ===');
  try {
    var profile = await fetchProfile(0);
    print('โหลดสำเร็จ: $profile');
  } catch (e) {
    print('เกิดข้อผิดพลาด: $e');
  } finally {
    print('สถานะ: จบการทำงานในกรณีที่ 2\n');
  }
}