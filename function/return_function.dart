void main() {
  print("10 + 20 = ${bokLek(10, 20)}");
  print("10 - 20 = ${dokLek(10, 20)}");
  print(
    "Is your password Valid or not : ${checkPassword("sokchea007") ? 'Valid' : 'Not Valid'}",
  );
  print("4 is prime number ? : ${checkPrimeNumber(4)}");
}

int bokLek(int a, int b) {
  return a + b;
}

int dokLek(int a, int b) {
  return a - b;
}

bool checkPassword(String? password) {
  if (password == null) return false;
  if (password.length >= 8) {
    if (password.contains(RegExp('r[0-9]'))) return true;
  }
  return false;
}

bool checkPrimeNumber(int num) {
  if (num < 2) {
    return false;
  }
  bool isPrime = true;
  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) {
      isPrime = false;
      break;
    }
  }
  if (isPrime) {
    return true;
  } else {
    return false;
  }
}
