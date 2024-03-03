// Task 1
int addTwo(int a, int b) {
  return a + b;
}

// Task 2
int subtractTwo(int a, int b) {
  return a - b;
}

// Task 3
int multiplyTwo(int a, int b) {
  return a * b;
}

// Task 4
double divideTwo(double a, double b) {
  if (b != 0) {
    return a / b;
  } else {
    throw ArgumentError('Cannot divide by zero');
  }
}

// Task 5
int stringLength(String str) {
  return str.length;
}

// Task 6
dynamic getFirstElement(List<dynamic> list) {
  if (list.isNotEmpty) {
    return list[0];
  } else {
    throw ArgumentError('List is empty');
  }
}

void main() {
  // Testing the functions
  print('Task 1: ${addTwo(5, 3)}'); // Expected output: 8
  print('Task 2: ${subtractTwo(8, 3)}'); // Expected output: 5
  print('Task 3: ${multiplyTwo(4, 6)}'); // Expected output: 24

  try {
    print('Task 4: ${divideTwo(8, 2)}'); // Expected output: 4.0
    print('Task 4: ${divideTwo(8, 0)}'); // Expected output: Error
  } catch (e) {
    print('Task 4: Error - ${e.toString()}');
  }

  print('Task 5: ${stringLength("Hello")}'); // Expected output: 5

  try {
    print('Task 6: ${getFirstElement([1, 2, 3, 4])}'); // Expected output: 1
    print('Task 6: ${getFirstElement([])}'); // Expected output: Error
  } catch (e) {
    print('Task 6: Error - ${e.toString()}');
  }
}
