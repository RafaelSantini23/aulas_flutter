class Person {
  String name;
  String lastname;
  String email;
  int  age;

  int calculateAgeInMonths() {
    return age * 12;
  }
  int calculateAgeInWeeks() {
    return age * 52;
  }
  int calculateAgeInDays() {
    return age * 365;
  }
  int calculateAgeInHours() {
    return age * 8760;
  }
  int calculateAgeInMinutes(){
    return age * 525600;
  }
  @override
  String toString(){
    return 'Person Nome: $name $lastname\nEmail: $email\nIdade: $age\nIdade em Meses: ${this.calculateAgeInMonths()}\nIdade em Semanas:${this.calculateAgeInWeeks()}\nIdade Em Dias:${this.calculateAgeInDays()}\nIdade em horas: ${this.calculateAgeInHours()}\nIdade em Minutos:${this.calculateAgeInMinutes()}';
  }

}