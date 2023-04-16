library words_numbers;

/// WordsNumbers.
class WordsNumbers {
  static const Map<String, int> _wordsNumber = {
    'zero': 0,
    'one': 1,
    'two': 2,
    'three': 3,
    'four': 4,
    'five': 5,
    'six': 6,
    'seven': 7,
    'eight': 8,
    'nine': 9,
    'ten': 10,
    'eleven': 11,
    'twelve': 12,
    'thirteen': 13,
    'fourteen': 14,
    'fifteen': 15,
    'sixteen': 16,
    'seventeen': 17,
    'eighteen': 18,
    'nineteen': 19,
    'twenty': 20,
    'thirty': 30,
    'forty': 40,
    'fifty': 50,
    'sixty': 60,
    'seventy': 70,
    'eighty': 80,
    'ninety': 90,
    'hundred': 100,
    'thousand': 1000,
    'million': 1000000,
    'billion': 1000000000,
    'trillion': 1000000000000,
    'quadrillion': 1000000000000000,
    'quintillion': 1000000000000000000,
  };

  static String convertTextNumberToString(String text) {
    // split the text string into individual words
    final words = text.split(' ');

    // convert each word to a number or keep it as is if it's not numeric
    final resultWords = words.map((word) {
      final number = _wordsNumber[word];
      return number != null ? number.toString() : word;
    }).toList();

    // combine the words into a single string
    final result = resultWords.join(' ');

    return result;
  }
}
