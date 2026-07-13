
void describe(String name, int age){
  print('&name is $age year old.');
}

void describeNamed({required String name, int? age}) {
  print('$name is ${age ?? 'unknown'} years old.');
}

String say(String from, String msg, [String? dev]) =>
  '$from says $msg${dev != null ? ' with a $dev' : ''}';
void main(){
  //describeNamed( name:'Natthawut',age:40);
  print(say('Bob', 'Howdy?')); // Bob says Howdy?
  print(say('Alice', 'Hi!', 'smartphone'));
}