class Calculadora{
  double number1;
  double number2;

  Calculadora(this.number1, this.number2);

  double somar(){
    return number1 + number2;
  }
  double subtracao(){
    return number1 - number2;
  }
  double divisao(){
    return number1 / number2;
  }
  double multiplicacao(){
    return number1 * number2;
  }

  @override 
  String toString() {
      // TODO: implement toString
      return "Numero 1: $number1\n Numero 2: $number2\nA soma dos números é: ${somar()}\nA subtração dos numeros é: ${subtracao()}\nA divisão dos numeros é: ${divisao()}\nA multiplicação dos números é: ${multiplicacao()} ";
    }

}