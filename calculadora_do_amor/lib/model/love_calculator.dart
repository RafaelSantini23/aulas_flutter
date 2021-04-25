import 'dart:math';

class LoveCalculator {

    String name1;
    String name2;

    LoveCalculator(this.name1,this.name2);

    String generateLovePercent () {
      var random = new Random();
      var randomNumber = random.nextInt(100);

      if(randomNumber >= 90) {
        return '${randomNumber}% Nasceram para casar';
      } else if (randomNumber >= 80){
        return '${randomNumber}% Vocês já podem morar juntos';
      } else if (randomNumber >= 60) {
        return '${randomNumber}% Vocês precisam sair juntos';
      } else if (randomNumber >= 50) {
        return '${randomNumber}% Precisam conversar mais';
      }else if (randomNumber >= 35) {
        return '${randomNumber}% Não se emociona amigo..';
      }else if (randomNumber > 25) {
        return '${randomNumber}% vocês não formariam um belo casal';
      }else 
        return '${randomNumber}% Ela gosta de outro...';
    }
    
}