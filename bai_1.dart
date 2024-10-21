void main() {
  List<int> numbers = [10, 5, 7, 1, 2, 9, 4, 3, 6, 8];

  // your awnser
  int evenBiggestNum = -1;
  int sumOfNumbers = 0;
  List<int> sortedNumbers = numbers.toList();
  sortedNumbers.sort((a, b) => b.compareTo(a));
  for (int i = 0; i < numbers.length; i++) {
    if (sortedNumbers[i] % 2 != 0) {
      evenBiggestNum = sortedNumbers[i];
      break;
    }
  }
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] == sortedNumbers[2]) {
      print(i);
    }
    sumOfNumbers += numbers[i];
  }
  Iterable filterNumbers = numbers.where((number) => number > 4);
  print(filterNumbers.toList());
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] == evenBiggestNum) {
      numbers[i] = sumOfNumbers;
    }
  }
  print(numbers);
}
