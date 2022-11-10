class W2HomeWork {
  /*
   Checks if the braces are set correctly
   e.g. "(a * b))" should return false
   */
  bool checkBraces(String string) {
    return "(".allMatches(string) == ")".allMatches(string);
  }

  /*
   * Returns the n-th fibonacci number
   * They are defined like this:
   * fib(0) = 0
   * fib(1) = 1
   * fib(n) = fib(n-2) + fib(n-1)
   */
  int fib(int n) {
    if (n == 0 || n == 1) {
      return n;
    }
    var a = 0;
    var b = 1;
    var c = 1;
    for (int i = 1; i <= n - 2; i++) {
      c = a + b;
      a = b;
      b = c;
    }
    return c;
  }
}
