void main() {
  // Q.1: Create a list of names and print all names using list.
  List<String> names = ['Alice', 'Bob', 'Charlie', 'David'];
  print("Q1: Names: $names");

  // Q.2: Create an empty list of type string called days. Add names of 7 days and print all days.
  List<String> days = [];
  days.addAll(['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']);
  print("Q2: Days: $days");

  // Q.3: Create a list of Days and remove one by one from the end of the list.
  while (days.isNotEmpty) {
    print("Removing: ${days.removeLast()}");
  }
  print("Q3: Days after removal: $days");

  // Q.4: Create a list of numbers and get the smallest & greatest number from the list.
  List<int> numbers = [34, 12, 78, 56, 98, 2, 45];
  int smallest = numbers.reduce((a, b) => a < b ? a : b);
  int greatest = numbers.reduce((a, b) => a > b ? a : b);
  print("Q4: Smallest: $smallest, Greatest: $greatest");

  // Q.5: Create a map with name, phone keys and store some values. Find keys with length 4.
  Map<String, String> contacts = {'Alex': '1234', 'John': '5678', 'Kate': '9876', 'Josh': '5432'};
  var keysWithLength4 = contacts.keys.where((key) => key.length == 4).toList();
  print("Q5: Keys with length 4: $keysWithLength4");

  // Q.6: Create Map variable world and countries. Print values of capital and currency.
  Map<String, Map<String, String>> world = {
    'USA': {'capitalCity': 'Washington D.C.', 'currency': 'USD', 'language': 'English'},
    'Pakistan': {'capitalCity': 'Islamabad', 'currency': 'PKR', 'language': 'Urdu'},
  };
  print("Q6: USA Capital: ${world['USA']?['capitalCity']}, Currency: ${world['USA']?['currency']}");

  // Q.7: Modify or add 'fri' to the map 'expenses'.
  Map<String, double> expenses = {'sun': 3000.0, 'mon': 3000.0, 'tue': 3234.0};
  expenses.containsKey('fri') ? expenses['fri'] = 5000.0 : expenses['fri'] = 5000.0;
  print("Q7: Expenses: $expenses");

  // Q.8: Remove all false values from the list of usersEligibility.
  List<Map> usersEligibility = [
    {'name': 'huzaifa', 'eligible': true},
    {'name': 'Alice', 'eligible': false},
    {'name': 'Mike', 'eligible': true},
    {'name': 'Sarah', 'eligible': true},
    {'name': 'Tom', 'eligible': false},
  ];
  usersEligibility.removeWhere((user) => user['eligible'] == false);
  print("Q8: Eligible Users: $usersEligibility");

  // Q.9: Find maximum value from the list.
  int maxValue = numbers.reduce((a, b) => a > b ? a : b);
  print("Q9: Max value: $maxValue");

  // Q.10: Remove duplicate elements from a list.
  List<String> originalList = ['apple', 'banana', 'apple', 'orange', 'banana'];
  List<String> uniqueList = originalList.toSet().toList();
  print("Q10: Unique List: $uniqueList");

  // Q.11: Print first n elements from the list.
  int n = 3;
  List<String> firstNElements = originalList.take(n).toList();
  print("Q11: First $n elements: $firstNElements");

  // Q.12: Reverse a list of strings.
  List<String> reversedList = List.from(originalList.reversed);
  print("Q12: Reversed List: $reversedList");

  // Q.13: Return only unique elements from the list.
  List<int> uniqueNumbers = numbers.toSet().toList();
  print("Q13: Unique Numbers: $uniqueNumbers");

  // Q.14: Print first 10 natural numbers in reverse order using while loop.
  int count = 10;
  List<int> reverseNumbers = [];
  while (count > 0) {
    reverseNumbers.add(count);
    count--;
  }
  print("Q14: First 10 natural numbers in reverse: $reverseNumbers");

  // Q.15: Filter out negative numbers from the list using where().
  List<int> integers = [-5, 3, 9, -2, 4];
  List<int> positiveNumbers = integers.where((num) => num >= 0).toList();
  print("Q15: Positive Numbers: $positiveNumbers");

  // Q.16: Filter out odd numbers from the list using where().
  List<int> evenNumbers = integers.where((num) => num % 2 == 0).toList();
  print("Q16: Even Numbers: $evenNumbers");

  // Q.17: Square each value in a list using map().
  List<int> squaredNumbers = integers.map((num) => num * num).toList();
  print("Q17: Squared Numbers: $squaredNumbers");

  // Q.18: Calculate the sum of odd numbers from 1 to 50 using a do-while loop.
  int sum = 0, number = 1;
  do {
    if (number % 2 != 0) {
      sum += number;
    }
    number++;
  } while (number <= 50);
  print("Q18: Sum of odd numbers from 1 to 50: $sum");

  // Q.19: Check if product is in stock.
  Map<String, dynamic> product = {'name': 'Laptop', 'price': 1500, 'quantity': 5};
  product['quantity'] > 0 ? print("Q19: In stock") : print("Q19: Out of stock");

  // Q.20: Check if car is a sedan and red in color.
  Map<String, dynamic> car = {'brand': 'Toyota', 'color': 'Red', 'isSedan': true};
  if (car['color'] == 'Red' && car['isSedan'] == true) {
    print("Q20: Match");
  } else {
    print("Q20: No match");
  }

  // Q.21: Count the number of digits in a number using while loop.
  int num = 123456;
  int digitCount = 0;
  while (num != 0) {
    num = num ~/ 10;
    digitCount++;
  }
  print("Q21: Number of digits: $digitCount");

  // Q.22: Check if "Apple" exists in the cart.
  Map<String, int> cart = {'Banana': 3, 'Apple': 2, 'Orange': 5};
  cart.containsKey('Apple') ? print("Q22: Product found") : print("Q22: Product not found");
}
