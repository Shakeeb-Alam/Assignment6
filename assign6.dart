// Question 2 (String in alphabetical order)


String sortedString(String str) {
  List<String> split = str.split('');
  split.sort();
  return split.join("");
}


void main() {
    var a = 'olsauenccuca';
  var v = sortedString(a);
  print(v);
}
//Question # 03
capatalizeFirst.dart

void main() {
  String test = 'this is coflutter';

  // Test extension, looks more beautiful, right?
  // same output: This Is Coflutter
  var a = convertToTitleCase("I am Ahmer");
  print(a);
}

String convertToTitleCase(String text) {
  if (text == null) {
    return "No";
  }

  if (text.length <= 1) {
    return text.toUpperCase();
  }

  // Split string into multiple words
  final List<String> words = text.split(' ');

  // Capitalize first letter of each words
  final capitalizedWords = words.map((word) {
    if (word.trim().isNotEmpty) {
      final String firstLetter = word.trim().substring(0, 1).toUpperCase();
      final String remainingLetters = word.trim().substring(1);

      return '$firstLetter$remainingLetters';
    }
    return '';
  });

  // Join/Merge all words back to one String
  return capitalizedWords.join(' ');
}

extension CapitalizedStringExtension on String {
  String toTitleCase() {
    return convertToTitleCase(this);
  }
}

//Question # 04
longestStr.dart

import 'dart:developer';
import 'dart:io';

void main() {
  // List<String> list = ['hi', 'hello', 'frozen', 'big mistake', 'cool daddy'];

  // var d = list.reduce((a, b) {
  //   return a.length > b.length ? a : b;
  // });

  // print(d);
/* 
  var list = ["Ahmer", "Usa", "Canada"];
  var l = longestStringinList(list);
  print(l);
*/
  var a = letterOccurance("ahmad", "a");
  print(a);
}

/* List<String>? longestStringinList(countryList) {
  countryList.reduce = (a, b) {
    if (a.length > b.length) {
      return a;
    } else {
      return b;
    }
  };
}
*/

/*
String longestStringinList(countryList) {
  var longest_element = countryList[0];
  for (var i = 1; i < countryList.length; i++) {
    if (countryList[i].length > longest_element.length) {
      longest_element = countryList[i];
    }
  }
  return longest_element;
}
 */

// By built in Function

int letterOccurance(String phrase, String letter) {
  phrase = phrase.toLowerCase();
  letter = letter.toLowerCase();
  return (letter.allMatches(phrase).length);
}
//Question # 04

import 'dart:io';

void main() {
  /* 
  String? char = stdin.readLineSync();
  List<String> order = char!.split('');
  order.sort();
  order.join('');
  print(order);
  */



  /*  print("Welcome to new program");
  String? inp = stdin.readLineSync();
  String? reverse = inp!.split('').reversed.join(); //split('').reversed.join();
  print(reverse);
*/

  // Checking palindorm String
/*
  print("Program to check wheter the given string is palindorm or not");
  String? inpStr = stdin.readLineSync();
  print("Enter a string");
  String? revStr = inpStr!.split('').reversed.join(); //split('').reversed.join();
  if (inpStr == revStr) {
    print("The given string is pailindrome");
  } else {
    print("The given string is not pailindrome");
  }
 */

      pailindromeChecker("Ahmer");
}

// Qustion 1 (Pailindrome Checker)
// With Parameter


void pailindromeChecker(String inpStr) {
  print("Program to check wheter the given string is palindorm or not");
  String? revStr =
      inpStr.split('').reversed.join(); //split('').reversed.join();

  if (inpStr == revStr) {
    print("The given string is pailindrome");
  } else {
    print("The given string is not pailindrome");
  }
}


/*
      Without parameter
void pailindromeChecker() {
  print("Program to check wheter the given string is palindorm or not");
   String? inpStr = stdin.readLineSync();
   String? revStr =inpStr!.split('').reversed.join(); 
  if (inpStr == revStr) {
    print("The given string is pailindrome");
  } else {
    print("The given string is not pailindrome");
  }
  
}
*/
