List<String> stringToList(String inputString) {
  List<String> wordList = inputString
      .split(',')
      .map((word) => word.trim())
      .where((word) => word.isNotEmpty)
      .toList();
  return wordList;
}
