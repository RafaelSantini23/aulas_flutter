class SortHat{

  static String generatePhrases (String houseName) {
      if(houseName == 'Gryffindor')  {
      return 'Nossos corações são maiores do que nossos medos. ';
    } else if (houseName == 'Slytherin') {
      return 'O que é para ser nosso ninguém tira e o que não é a gente toma a força.';
    } else if (houseName == 'Corvinal') {
      return 'Nosso emblema é uma águia, que plana por onde outros não podem escalar.';
    }else  {
      return 'Hufflepuff';
    } 
    

  }
}