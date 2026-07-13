void main(){
  String? middleName;
  String city = 'Nakorn Sawan';
  // ignore: dead_code
  int middleNameLength = middleName?.length ?? 0;
  print('middle name length: $middleNameLength');

  print('city length: ${city.length}');
  
  // แก้จาก @ เป็น $
  print('Middle name before assignment: $middleName'); 
  middleName ??= 'N/A';
  
  print('Middle name after assignment: $middleName');

  print('Middle name after second assignment: $middleName');
}