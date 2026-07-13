Future<Map<String, dynamic>> fetchProfile(int userId) async {
  await Future.delayed(Duration(seconds: 2));
  if (userId <= 0) {
    throw Exception('userId ไม่ถูกต้อง: $userId');
  }
  return {
    'id': userId,
    'name': 'User$userId',
    'email': 'user$userId@example.com',
  };
}

void main() async {
  try {
    print('กำลังดึงข้อมูล userId = 1 ...');
    var profile = await fetchProfile(1);
    print('ได้ข้อมูล: $profile');
  } catch (e) {
    print('เกิดข้อผิดพลาด: $e');
  } finally {
    print('จบการทำงาน (กรณีที่ 1)');
  }

  print('----------');

  try {
    print('กำลังดึงข้อมูล userId = -5 ...');
    var profile = await fetchProfile(-5);
    print('ได้ข้อมูล: $profile');
  } catch (e) {
    print('เกิดข้อผิดพลาด: $e');
  } finally {
    print('จบการทำงาน (กรณีที่ 2)');
  }
}
