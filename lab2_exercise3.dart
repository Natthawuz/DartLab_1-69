void main() {
  // List
  List<String> subjects = ['Blockchain', 'network', 'Intro to Programming'];
  print('Number of subjects: ${subjects.length}');
  print('First subject: ${subjects[0]}');
  print('Last subject: ${subjects[subjects.length - 1]}');

  subjects.add('graphic Desing');
  print('Updated subjects: $subjects');

  print(
    '_________________________________________________________________________',
  );

  // Map
  Map<String, int> studentScores = {'Blockchain': 80, 'network': 100};
  print('Score for Blockchain: ${studentScores['Blockchain']}');
  studentScores['Intro to Programming'] = 80;

  print('Updated scores: $studentScores');
  print('All subjects in map: ${studentScores.keys}');
  print('All scores in map: ${studentScores.values}');
}
