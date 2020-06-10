const _romanNumerals = <int, String>{
  1000: 'm',
  900: 'cm',
  500: 'd',
  400: 'cd',
  100: 'c',
  90: 'xc',
  50: 'l',
  40: 'xl',
  10: 'x',
  9: 'ix',
  5: 'v',
  4: 'iv',
  1: 'i',
};

String generateRomanNumeral(int index) {
  var roman = '';
  var number = index;

  for (final item in _romanNumerals.entries) {
    while (number >= item.key) {
      roman += item.value;
      number -= item.key;
    }
  }

  return roman;
}

String generateLetterNumeral(int index) {
  var numeral = '';
  var number = index - 1;

  if (number == 0) return 'a';

  while (number > 0) {
    numeral += String.fromCharCode(number % 26 + 'a'.codeUnits.single);
    number = (number / 26).floor();
  }

  return numeral.split('').reversed.join();
}

String generateNumeral(int index) => index.toString();

List<String Function(int)> generators = [
  generateNumeral,
  generateLetterNumeral,
  generateRomanNumeral,
];
