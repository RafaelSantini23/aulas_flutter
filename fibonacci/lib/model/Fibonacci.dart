class Fibonacci {

  int term1 = 0;
  int term2 = 1;
  int sum = 0;

  Stream<int> calculateSingleFibonacci(int max) async* {
    while(term2 <= max) {
      await Future.delayed(const Duration(seconds: 2));
      sum = term1 + term2;
      term1= term2;
      term2 = sum;
      yield sum;
    }

    // var terms = [term1, term2];
    // while(terms[terms.length -1] <= max) {
    //   await Future.delayed(const Duration(seconds: 2));
    //   sum = terms[terms.length - 2] + terms[terms.length - 1];
    //   terms.add(sum);
    //   yield sum;
    // }
  }
}